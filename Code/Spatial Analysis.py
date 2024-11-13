# Import necessary libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import geopandas as gpd
from shapely.geometry import Polygon
from esda.moran import Moran
from libpysal.weights import Queen
from mgwr.gwr import GWR, MGWR
from mgwr.sel_bw import Sel_BW
from sklearn.preprocessing import StandardScaler

# Try Moran's I spatial analysis for mean chlorophyll levels
try:
    # Copy the DataFrame to prevent modifying the original data
    moranDf = analyzeDf.copy()
    
    # Set y to the column representing mean chlorophyll levels
    y = moranDf['mean_chl'].values
    
    # Calculating spatial weight matrix based on Queen contiguity
    w = Queen.from_dataframe(moranDf)
    moran = Moran(y, w)
    
    # Print Moran's I and associated statistical results
    print(f"Moran's I: {moran.I:.4f}")
    print(f"Expected Moran's I under spatial randomness: {moran.EI:.4f}")
    print(f"P-value: {moran.p_sim:.4f}")
    print('--------------------------------------------------------------------\n')

except Exception as e:
    print(f"Error calculating Moran's I: {e}")

# Define the dictionary for Alzheimer analysis file paths for each region
alzheimer_regions = {
    '경상남도': "Alzheimer_Gyeongsangnamdo_GWR_Coefficient.csv",
    '경상북도': "Alzheimer_Gyeongsangbukdo_GWR_Coefficient.csv",
    '대구광역시': "Alzheimer_Daegu_GWR_Coefficient.csv",
    '울산광역시': "Alzheimer_Ulsan_GWR_Coefficient.csv",
    '부산광역시': "Alzheimer_Busan_GWR_Coefficient.csv",
}

# Alzheimer's Geographically Weighted Regression (GWR) analysis by region
try:
    for region, csv_path in alzheimer_regions.items():
        # Copy data to avoid altering the original DataFrame
        adGWR = analyzeDf.copy()
        
        # Filter for the specific region and drop rows with missing 'gridAd' values
        regionDf = adGWR[adGWR['CTP_KOR_NM'] == region].dropna(subset=['gridAd']).reset_index(drop=True)
        
        # Prepare coordinates and variables for GWR
        coords = list(zip(regionDf['center_x'], regionDf['center_y']))
        y = regionDf['gridAd'].values.reshape((-1, 1))
        X = regionDf[['mean_chl']].values

        # Select bandwidth using AIC for the GWR model
        gwr_selector = Sel_BW(coords, y, X)
        bw = gwr_selector.search(criterion='AIC')
        
        # Fit the GWR model and get results
        gwr_model = GWR(coords, y, X, bw)
        gwr_results = gwr_model.fit()

        # Standardize the coefficients for comparability
        coefficient_values = gwr_results.params[:, 1]
        X_std = StandardScaler().fit_transform(X)
        std_devs = np.std(X_std, axis=0)
        standardized_beta = coefficient_values / std_devs

        # Save results to a DataFrame
        coefficient_df = pd.DataFrame({
            'center_x': regionDf['center_x'], 
            'center_y': regionDf['center_y'], 
            'year': regionDf['year'], 
            'Coefficient': standardized_beta
        })

        # Merge the coefficient data back with the original DataFrame and save to CSV
        merged_gdf = regionDf.merge(coefficient_df, on=['center_x', 'center_y', 'year'], how='left')
        merged_gdf.to_csv(csv_path, encoding='cp949', index=False)
        
except Exception as error:
    print(f"Error during Alzheimer's GWR analysis: {error}")

# Define file paths for Parkinson analysis by region
parkinson_regions = {
    '경상남도': "Parkinson_Gyeongsangnamdo_GWR_Coefficient.csv",
    '경상북도': "Parkinson_Gyeongsangbukdo_GWR_Coefficient.csv",
    '대구광역시': "Parkinson_Daegu_GWR_Coefficient.csv",
    '울산광역시': "Parkinson_Ulsan_GWR_Coefficient.csv",
    '부산광역시': "Parkinson_Busan_GWR_Coefficient.csv",
}

# Parkinson's Geographically Weighted Regression (GWR) analysis by region
try:
    for region, csv_path in parkinson_regions.items():
        pdGWR = analyzeDf.copy()

        # Filter by region and exclude rows with missing 'gridpd'
        regionDf = pdGWR[pdGWR['CTP_KOR_NM'] == region].dropna(subset=['gridpd']).reset_index(drop=True)
        
        # Set up coordinates and variables for GWR analysis
        coords = list(zip(regionDf['center_x'], regionDf['center_y']))
        y = regionDf['gridpd'].values.reshape((-1, 1))
        X = regionDf[['mean_chl']].values

        # Determine the optimal bandwidth using AIC
        gwr_selector = Sel_BW(coords, y, X)
        bw = gwr_selector.search(criterion='AIC')
        
        # Run the GWR model and get results
        gwr_model = GWR(coords, y, X, bw)
        gwr_results = gwr_model.fit()

        # Standardize coefficients for comparability
        coefficient_values = gwr_results.params[:, 1]
        X_std = StandardScaler().fit_transform(X)
        std_devs = np.std(X_std, axis=0)
        standardized_beta = coefficient_values / std_devs

        # Compile results into a DataFrame
        coefficient_df = pd.DataFrame({
            'center_x': regionDf['center_x'], 
            'center_y': regionDf['center_y'], 
            'year': regionDf['year'], 
            'Coefficient': standardized_beta
        })

        # Merge with original data and save to CSV
        merged_gdf = regionDf.merge(coefficient_df, on=['center_x', 'center_y', 'year'], how='left')
        merged_gdf.to_csv(csv_path, encoding='cp949', index=False)
        
except Exception as error:
    print(f"Error during Parkinson's GWR analysis: {error}")
