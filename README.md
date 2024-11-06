# Spatiotemporal Exploration of Harmful Algal Blooms (HABs) and Neurodegenerative Disease: A Geographic Approach

## Overview

This repository contains supporting materials for the paper titled “Spatiotemporal Exploration of Harmful Algal Blooms (HABs) and Neurodegenerative Disease: A Geographic Approach.” The study investigates the relationship between HABs events and neurodegenerative diseases, specifically Alzheimer’s Disease (AD) and Parkinson’s Disease (PD), within South Korea. The research utilizes spatiotemporal analysis and geostatistical methods to uncover patterns and correlations that may indicate public health risks associated with HAB exposure.

## Repository Contents

  - Data: Only publicly accessible data is included here. Some constructed datasets and sensitive information used in this study cannot be provided due to privacy restrictions.
  - Scripts: Scripts for data preprocessing, spatiotemporal analysis, and visualization. These scripts allow for the reproduction of analytical methods used in the study.
  - Figures and Tables: Key visualizations and tables are available to illustrate the relationship between HAB concentrations and neurodegenerative disease incidence.

## Data Availability

The data in this study consists of:
	1.	Open Data: Open datasets from sources like the National Institute of Environmental Research and the Statistical Geographic Information Service (SGIS).
	2.	Constructed Data: The constructed data, including specific spatial interpolations and grid-based datasets, contain sensitive information and cannot be shared publicly.

## Methodology

1. Spatiotemporal Data Construction

  - 3D Universal Kriging: Used to interpolate missing chlorophyll-a values, providing a detailed spatial representation of HAB concentrations.
	- Geographically Weighted Regression (GWR): Localized regression models were employed to analyze relationships between chlorophyll-a intensity and disease incidence across various regions.

2. Analysis and Modeling

  - The study utilized advanced geostatistical techniques to capture spatial autocorrelation and analyze the temporal persistence of HAB exposure risks across grid-based population units.

## Requirements

  - Python 3.8 or later
  - Libraries: pandas, numpy, geopandas, scipy, statsmodels, matplotlib, sklearn
