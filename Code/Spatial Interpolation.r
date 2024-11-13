# Install and load necessary packages
library(gstat)
library(dplyr)
library(tidyr)
library(sp)
library(sf)
library(automap)
library(spdep)
library(scales)

options(warn = -1) # Don't print warnings

# Set working directory
# Set your working directory here if necessary
# Please set the working directory accordingly

############################
# year:2010 & month:1
############################
# Import data
BaseChl_2010_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_1, BaseChl_2010_1)
BaseChl_2010_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_1.csv")
write.csv(BaseChl_2010_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:2
############################
# Import data
BaseChl_2010_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_2, BaseChl_2010_2)
BaseChl_2010_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_2.csv")
write.csv(BaseChl_2010_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:3
############################
# Import data
BaseChl_2010_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()

# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_3, BaseChl_2010_3)
BaseChl_2010_3$ok_chl <- kriging_results$krige_output$var1.pred

# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_3.csv")
write.csv(BaseChl_2010_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:4
############################
# Import data
BaseChl_2010_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_4, BaseChl_2010_4)
BaseChl_2010_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_4.csv")
write.csv(BaseChl_2010_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:5
############################
# Import data
BaseChl_2010_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_5, BaseChl_2010_5)
BaseChl_2010_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_5.csv")
write.csv(BaseChl_2010_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:6
############################
# Import data
BaseChl_2010_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_6, BaseChl_2010_6)
BaseChl_2010_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_6.csv")
write.csv(BaseChl_2010_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:7
############################
# Import data
BaseChl_2010_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_7, BaseChl_2010_7)
BaseChl_2010_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_7.csv")
write.csv(BaseChl_2010_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:8
############################
# Import data
BaseChl_2010_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_8, BaseChl_2010_8)
BaseChl_2010_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_8.csv")
write.csv(BaseChl_2010_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:9
############################
# Import data
BaseChl_2010_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_9, BaseChl_2010_9)
BaseChl_2010_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_9.csv")
write.csv(BaseChl_2010_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:10
############################
# Import data
BaseChl_2010_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_10, BaseChl_2010_10)
BaseChl_2010_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_10.csv")
write.csv(BaseChl_2010_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:11
############################
# Import data
BaseChl_2010_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_11, BaseChl_2010_11)
BaseChl_2010_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_11.csv")
write.csv(BaseChl_2010_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2010 & month:12
############################
# Import data
BaseChl_2010_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2010_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2010_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2010_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2010_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2010_12, BaseChl_2010_12)
BaseChl_2010_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2010_12.csv")
write.csv(BaseChl_2010_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:1
############################
# Import data
BaseChl_2011_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_1, BaseChl_2011_1)
BaseChl_2011_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_1.csv")
write.csv(BaseChl_2011_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:2
############################
# Import data
BaseChl_2011_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_2, BaseChl_2011_2)
BaseChl_2011_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_2.csv")
write.csv(BaseChl_2011_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:3
############################
# Import data
BaseChl_2011_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_3, BaseChl_2011_3)
BaseChl_2011_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_3.csv")
write.csv(BaseChl_2011_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:4
############################
# Import data
BaseChl_2011_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_4, BaseChl_2011_4)
BaseChl_2011_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_4.csv")
write.csv(BaseChl_2011_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:5
############################
# Import data
BaseChl_2011_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_5, BaseChl_2011_5)
BaseChl_2011_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_5.csv")
write.csv(BaseChl_2011_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:6
############################
# Import data
BaseChl_2011_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_6, BaseChl_2011_6)
BaseChl_2011_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_6.csv")
write.csv(BaseChl_2011_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:7
############################
# Import data
BaseChl_2011_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_7, BaseChl_2011_7)
BaseChl_2011_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_7.csv")
write.csv(BaseChl_2011_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:8
############################
# Import data
BaseChl_2011_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_8, BaseChl_2011_8)
BaseChl_2011_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_8.csv")
write.csv(BaseChl_2011_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:9
############################
# Import data
BaseChl_2011_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_9, BaseChl_2011_9)
BaseChl_2011_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_9.csv")
write.csv(BaseChl_2011_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:10
############################
# Import data
BaseChl_2011_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_10, BaseChl_2011_10)
BaseChl_2011_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_10.csv")
write.csv(BaseChl_2011_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:11
############################
# Import data
BaseChl_2011_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_11, BaseChl_2011_11)
BaseChl_2011_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_11.csv")
write.csv(BaseChl_2011_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2011 & month:12
############################
# Import data
BaseChl_2011_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2011_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2011_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2011_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2011_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2011_12, BaseChl_2011_12)
BaseChl_2011_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2011_12.csv")
write.csv(BaseChl_2011_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:1
############################
# Import data
BaseChl_2012_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_1, BaseChl_2012_1)
BaseChl_2012_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_1.csv")
write.csv(BaseChl_2012_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:2
############################
# Import data
BaseChl_2012_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_2, BaseChl_2012_2)
BaseChl_2012_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_2.csv")
write.csv(BaseChl_2012_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:3
############################
# Import data
BaseChl_2012_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_3, BaseChl_2012_3)
BaseChl_2012_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_3.csv")
write.csv(BaseChl_2012_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:4
############################
# Import data
BaseChl_2012_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_4, BaseChl_2012_4)
BaseChl_2012_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_4.csv")
write.csv(BaseChl_2012_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:5
############################
# Import data
BaseChl_2012_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_5, BaseChl_2012_5)
BaseChl_2012_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_5.csv")
write.csv(BaseChl_2012_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:6
############################
# Import data
BaseChl_2012_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_6, BaseChl_2012_6)
BaseChl_2012_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_6.csv")
write.csv(BaseChl_2012_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:7
############################
# Import data
BaseChl_2012_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_7, BaseChl_2012_7)
BaseChl_2012_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_7.csv")
write.csv(BaseChl_2012_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:8
############################
# Import data
BaseChl_2012_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_8, BaseChl_2012_8)
BaseChl_2012_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_8.csv")
write.csv(BaseChl_2012_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:9
############################
# Import data
BaseChl_2012_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_9, BaseChl_2012_9)
BaseChl_2012_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_9.csv")
write.csv(BaseChl_2012_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:10
############################
# Import data
BaseChl_2012_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_10, BaseChl_2012_10)
BaseChl_2012_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_10.csv")
write.csv(BaseChl_2012_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:11
############################
# Import data
BaseChl_2012_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_11, BaseChl_2012_11)
BaseChl_2012_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_11.csv")
write.csv(BaseChl_2012_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2012 & month:12
############################
# Import data
BaseChl_2012_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2012_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2012_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2012_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2012_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2012_12, BaseChl_2012_12)
BaseChl_2012_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2012_12.csv")
write.csv(BaseChl_2012_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:1
############################
# Import data
BaseChl_2013_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_1, BaseChl_2013_1)
BaseChl_2013_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_1.csv")
write.csv(BaseChl_2013_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:2
############################
# Import data
BaseChl_2013_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_2, BaseChl_2013_2)
BaseChl_2013_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_2.csv")
write.csv(BaseChl_2013_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:3
############################
# Import data
BaseChl_2013_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_3, BaseChl_2013_3)
BaseChl_2013_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_3.csv")
write.csv(BaseChl_2013_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:4
############################
# Import data
BaseChl_2013_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_4, BaseChl_2013_4)
BaseChl_2013_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_4.csv")
write.csv(BaseChl_2013_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:5
############################
# Import data
BaseChl_2013_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_5, BaseChl_2013_5)
BaseChl_2013_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_5.csv")
write.csv(BaseChl_2013_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:6
############################
# Import data
BaseChl_2013_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_6, BaseChl_2013_6)
BaseChl_2013_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_6.csv")
write.csv(BaseChl_2013_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:7
############################
# Import data
BaseChl_2013_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_7, BaseChl_2013_7)
BaseChl_2013_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_7.csv")
write.csv(BaseChl_2013_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:8
############################
# Import data
BaseChl_2013_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_8, BaseChl_2013_8)
BaseChl_2013_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_8.csv")
write.csv(BaseChl_2013_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:9
############################
# Import data
BaseChl_2013_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_9, BaseChl_2013_9)
BaseChl_2013_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_9.csv")
write.csv(BaseChl_2013_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:10
############################
# Import data
BaseChl_2013_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_10, BaseChl_2013_10)
BaseChl_2013_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_10.csv")
write.csv(BaseChl_2013_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:11
############################
# Import data
BaseChl_2013_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_11, BaseChl_2013_11)
BaseChl_2013_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_11.csv")
write.csv(BaseChl_2013_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2013 & month:12
############################
# Import data
BaseChl_2013_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2013_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2013_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2013_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2013_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2013_12, BaseChl_2013_12)
BaseChl_2013_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2013_12.csv")
write.csv(BaseChl_2013_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:1
############################
# Import data
BaseChl_2014_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_1, BaseChl_2014_1)
BaseChl_2014_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_1.csv")
write.csv(BaseChl_2014_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:2
############################
# Import data
BaseChl_2014_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_2, BaseChl_2014_2)
BaseChl_2014_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_2.csv")
write.csv(BaseChl_2014_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:3
############################
# Import data
BaseChl_2014_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_3, BaseChl_2014_3)
BaseChl_2014_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_3.csv")
write.csv(BaseChl_2014_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:4
############################
# Import data
BaseChl_2014_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_4, BaseChl_2014_4)
BaseChl_2014_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_4.csv")
write.csv(BaseChl_2014_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:5
############################
# Import data
BaseChl_2014_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_5, BaseChl_2014_5)
BaseChl_2014_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_5.csv")
write.csv(BaseChl_2014_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:6
############################
# Import data
BaseChl_2014_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_6, BaseChl_2014_6)
BaseChl_2014_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_6.csv")
write.csv(BaseChl_2014_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:7
############################
# Import data
BaseChl_2014_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_7, BaseChl_2014_7)
BaseChl_2014_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_7.csv")
write.csv(BaseChl_2014_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:8
############################
# Import data
BaseChl_2014_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_8, BaseChl_2014_8)
BaseChl_2014_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_8.csv")
write.csv(BaseChl_2014_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:9
############################
# Import data
BaseChl_2014_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_9, BaseChl_2014_9)
BaseChl_2014_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_9.csv")
write.csv(BaseChl_2014_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:10
############################
# Import data
BaseChl_2014_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_10, BaseChl_2014_10)
BaseChl_2014_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_10.csv")
write.csv(BaseChl_2014_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:11
############################
# Import data
BaseChl_2014_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_11, BaseChl_2014_11)
BaseChl_2014_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_11.csv")
write.csv(BaseChl_2014_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2014 & month:12
############################
# Import data
BaseChl_2014_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2014_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2014_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2014_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2014_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2014_12, BaseChl_2014_12)
BaseChl_2014_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2014_12.csv")
write.csv(BaseChl_2014_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:1
############################
# Import data
BaseChl_2015_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_1, BaseChl_2015_1)
BaseChl_2015_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_1.csv")
write.csv(BaseChl_2015_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:2
############################
# Import data
BaseChl_2015_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_2, BaseChl_2015_2)
BaseChl_2015_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_2.csv")
write.csv(BaseChl_2015_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:3
############################
# Import data
BaseChl_2015_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_3, BaseChl_2015_3)
BaseChl_2015_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_3.csv")
write.csv(BaseChl_2015_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:4
############################
# Import data
BaseChl_2015_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_4, BaseChl_2015_4)
BaseChl_2015_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_4.csv")
write.csv(BaseChl_2015_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:5
############################
# Import data
BaseChl_2015_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_5, BaseChl_2015_5)
BaseChl_2015_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_5.csv")
write.csv(BaseChl_2015_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:6
############################
# Import data
BaseChl_2015_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_6, BaseChl_2015_6)
BaseChl_2015_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_6.csv")
write.csv(BaseChl_2015_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:7
############################
# Import data
BaseChl_2015_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_7, BaseChl_2015_7)
BaseChl_2015_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_7.csv")
write.csv(BaseChl_2015_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:8
############################
# Import data
BaseChl_2015_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_8, BaseChl_2015_8)
BaseChl_2015_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_8.csv")
write.csv(BaseChl_2015_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:9
############################
# Import data
BaseChl_2015_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_9, BaseChl_2015_9)
BaseChl_2015_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_9.csv")
write.csv(BaseChl_2015_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:10
############################
# Import data
BaseChl_2015_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_10, BaseChl_2015_10)
BaseChl_2015_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_10.csv")
write.csv(BaseChl_2015_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:11
############################
# Import data
BaseChl_2015_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_11, BaseChl_2015_11)
BaseChl_2015_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_11.csv")
write.csv(BaseChl_2015_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2015 & month:12
############################
# Import data
BaseChl_2015_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2015_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2015_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2015_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2015_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2015_12, BaseChl_2015_12)
BaseChl_2015_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2015_12.csv")
write.csv(BaseChl_2015_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:1
############################
# Import data
BaseChl_2016_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_1, BaseChl_2016_1)
BaseChl_2016_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_1.csv")
write.csv(BaseChl_2016_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:2
############################
# Import data
BaseChl_2016_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_2, BaseChl_2016_2)
BaseChl_2016_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_2.csv")
write.csv(BaseChl_2016_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:3
############################
# Import data
BaseChl_2016_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_3, BaseChl_2016_3)
BaseChl_2016_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_3.csv")
write.csv(BaseChl_2016_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:4
############################
# Import data
BaseChl_2016_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_4, BaseChl_2016_4)
BaseChl_2016_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_4.csv")
write.csv(BaseChl_2016_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:5
############################
# Import data
BaseChl_2016_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_5, BaseChl_2016_5)
BaseChl_2016_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_5.csv")
write.csv(BaseChl_2016_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:6
############################
# Import data
BaseChl_2016_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_6, BaseChl_2016_6)
BaseChl_2016_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_6.csv")
write.csv(BaseChl_2016_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:7
############################
# Import data
BaseChl_2016_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_7, BaseChl_2016_7)
BaseChl_2016_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_7.csv")
write.csv(BaseChl_2016_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:8
############################
# Import data
BaseChl_2016_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_8, BaseChl_2016_8)
BaseChl_2016_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_8.csv")
write.csv(BaseChl_2016_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:9
############################
# Import data
BaseChl_2016_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_9, BaseChl_2016_9)
BaseChl_2016_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_9.csv")
write.csv(BaseChl_2016_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:10
############################
# Import data
BaseChl_2016_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_10, BaseChl_2016_10)
BaseChl_2016_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_10.csv")
write.csv(BaseChl_2016_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:11
############################
# Import data
BaseChl_2016_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_11, BaseChl_2016_11)
BaseChl_2016_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_11.csv")
write.csv(BaseChl_2016_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2016 & month:12
############################
# Import data
BaseChl_2016_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2016_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2016_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2016_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2016_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2016_12, BaseChl_2016_12)
BaseChl_2016_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2016_12.csv")
write.csv(BaseChl_2016_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:1
############################
# Import data
BaseChl_2017_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_1, BaseChl_2017_1)
BaseChl_2017_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_1.csv")
write.csv(BaseChl_2017_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:2
############################
# Import data
BaseChl_2017_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_2, BaseChl_2017_2)
BaseChl_2017_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_2.csv")
write.csv(BaseChl_2017_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:3
############################
# Import data
BaseChl_2017_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_3, BaseChl_2017_3)
BaseChl_2017_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_3.csv")
write.csv(BaseChl_2017_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:4
############################
# Import data
BaseChl_2017_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_4, BaseChl_2017_4)
BaseChl_2017_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_4.csv")
write.csv(BaseChl_2017_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:5
############################
# Import data
BaseChl_2017_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_5, BaseChl_2017_5)
BaseChl_2017_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_5.csv")
write.csv(BaseChl_2017_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:6
############################
# Import data
BaseChl_2017_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_6, BaseChl_2017_6)
BaseChl_2017_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_6.csv")
write.csv(BaseChl_2017_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:7
############################
# Import data
BaseChl_2017_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_7, BaseChl_2017_7)
BaseChl_2017_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_7.csv")
write.csv(BaseChl_2017_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:8
############################
# Import data
BaseChl_2017_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_8, BaseChl_2017_8)
BaseChl_2017_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_8.csv")
write.csv(BaseChl_2017_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:9
############################
# Import data
BaseChl_2017_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_9, BaseChl_2017_9)
BaseChl_2017_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_9.csv")
write.csv(BaseChl_2017_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:10
############################
# Import data
BaseChl_2017_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_10, BaseChl_2017_10)
BaseChl_2017_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_10.csv")
write.csv(BaseChl_2017_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:11
############################
# Import data
BaseChl_2017_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_11, BaseChl_2017_11)
BaseChl_2017_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_11.csv")
write.csv(BaseChl_2017_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2017 & month:12
############################
# Import data
BaseChl_2017_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2017_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2017_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2017_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2017_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2017_12, BaseChl_2017_12)
BaseChl_2017_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2017_12.csv")
write.csv(BaseChl_2017_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:1
############################
# Import data
BaseChl_2018_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_1, BaseChl_2018_1)
BaseChl_2018_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_1.csv")
write.csv(BaseChl_2018_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:2
############################
# Import data
BaseChl_2018_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_2, BaseChl_2018_2)
BaseChl_2018_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_2.csv")
write.csv(BaseChl_2018_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:3
############################
# Import data
BaseChl_2018_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_3, BaseChl_2018_3)
BaseChl_2018_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_3.csv")
write.csv(BaseChl_2018_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:4
############################
# Import data
BaseChl_2018_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_4, BaseChl_2018_4)
BaseChl_2018_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_4.csv")
write.csv(BaseChl_2018_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:5
############################
# Import data
BaseChl_2018_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_5, BaseChl_2018_5)
BaseChl_2018_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_5.csv")
write.csv(BaseChl_2018_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:6
############################
# Import data
BaseChl_2018_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_6, BaseChl_2018_6)
BaseChl_2018_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_6.csv")
write.csv(BaseChl_2018_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:7
############################
# Import data
BaseChl_2018_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_7, BaseChl_2018_7)
BaseChl_2018_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_7.csv")
write.csv(BaseChl_2018_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:8
############################
# Import data
BaseChl_2018_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_8, BaseChl_2018_8)
BaseChl_2018_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_8.csv")
write.csv(BaseChl_2018_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:9
############################
# Import data
BaseChl_2018_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_9, BaseChl_2018_9)
BaseChl_2018_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_9.csv")
write.csv(BaseChl_2018_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:10
############################
# Import data
BaseChl_2018_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_10, BaseChl_2018_10)
BaseChl_2018_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_10.csv")
write.csv(BaseChl_2018_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:11
############################
# Import data
BaseChl_2018_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_11, BaseChl_2018_11)
BaseChl_2018_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_11.csv")
write.csv(BaseChl_2018_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2018 & month:12
############################
# Import data
BaseChl_2018_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2018_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2018_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2018_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2018_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2018_12, BaseChl_2018_12)
BaseChl_2018_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2018_12.csv")
write.csv(BaseChl_2018_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:1
############################
# Import data
BaseChl_2019_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_1, BaseChl_2019_1)
BaseChl_2019_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_1.csv")
write.csv(BaseChl_2019_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:2
############################
# Import data
BaseChl_2019_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_2, BaseChl_2019_2)
BaseChl_2019_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_2.csv")
write.csv(BaseChl_2019_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:3
############################
# Import data
BaseChl_2019_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_3, BaseChl_2019_3)
BaseChl_2019_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_3.csv")
write.csv(BaseChl_2019_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:4
############################
# Import data
BaseChl_2019_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_4, BaseChl_2019_4)
BaseChl_2019_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_4.csv")
write.csv(BaseChl_2019_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:5
############################
# Import data
BaseChl_2019_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_5, BaseChl_2019_5)
BaseChl_2019_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_5.csv")
write.csv(BaseChl_2019_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:6
############################
# Import data
BaseChl_2019_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_6, BaseChl_2019_6)
BaseChl_2019_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_6.csv")
write.csv(BaseChl_2019_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:7
############################
# Import data
BaseChl_2019_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_7, BaseChl_2019_7)
BaseChl_2019_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_7.csv")
write.csv(BaseChl_2019_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:8
############################
# Import data
BaseChl_2019_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_8, BaseChl_2019_8)
BaseChl_2019_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_8.csv")
write.csv(BaseChl_2019_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:9
############################
# Import data
BaseChl_2019_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_9, BaseChl_2019_9)
BaseChl_2019_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_9.csv")
write.csv(BaseChl_2019_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:10
############################
# Import data
BaseChl_2019_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_10, BaseChl_2019_10)
BaseChl_2019_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_10.csv")
write.csv(BaseChl_2019_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:11
############################
# Import data
BaseChl_2019_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_11, BaseChl_2019_11)
BaseChl_2019_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_11.csv")
write.csv(BaseChl_2019_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2019 & month:12
############################
# Import data
BaseChl_2019_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2019_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2019_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2019_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2019_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2019_12, BaseChl_2019_12)
BaseChl_2019_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2019_12.csv")
write.csv(BaseChl_2019_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:1
############################
# Import data
BaseChl_2020_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_1, BaseChl_2020_1)
BaseChl_2020_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_1.csv")
write.csv(BaseChl_2020_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:2
############################
# Import data
BaseChl_2020_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_2, BaseChl_2020_2)
BaseChl_2020_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_2.csv")
write.csv(BaseChl_2020_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:3
############################
# Import data
BaseChl_2020_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_3, BaseChl_2020_3)
BaseChl_2020_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_3.csv")
write.csv(BaseChl_2020_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:4
############################
# Import data
BaseChl_2020_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_4, BaseChl_2020_4)
BaseChl_2020_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_4.csv")
write.csv(BaseChl_2020_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:5
############################
# Import data
BaseChl_2020_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_5, BaseChl_2020_5)
BaseChl_2020_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_5.csv")
write.csv(BaseChl_2020_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:6
############################
# Import data
BaseChl_2020_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_6, BaseChl_2020_6)
BaseChl_2020_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_6.csv")
write.csv(BaseChl_2020_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:7
############################
# Import data
BaseChl_2020_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_7, BaseChl_2020_7)
BaseChl_2020_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_7.csv")
write.csv(BaseChl_2020_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:8
############################
# Import data
BaseChl_2020_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_8, BaseChl_2020_8)
BaseChl_2020_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_8.csv")
write.csv(BaseChl_2020_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:9
############################
# Import data
BaseChl_2020_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_9, BaseChl_2020_9)
BaseChl_2020_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_9.csv")
write.csv(BaseChl_2020_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:10
############################
# Import data
BaseChl_2020_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_10, BaseChl_2020_10)
BaseChl_2020_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_10.csv")
write.csv(BaseChl_2020_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:11
############################
# Import data
BaseChl_2020_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_11, BaseChl_2020_11)
BaseChl_2020_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_11.csv")
write.csv(BaseChl_2020_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2020 & month:12
############################
# Import data
BaseChl_2020_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2020_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2020_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2020_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2020_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2020_12, BaseChl_2020_12)
BaseChl_2020_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2020_12.csv")
write.csv(BaseChl_2020_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:1
############################
# Import data
BaseChl_2021_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_1, BaseChl_2021_1)
BaseChl_2021_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_1.csv")
write.csv(BaseChl_2021_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:2
############################
# Import data
BaseChl_2021_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_2, BaseChl_2021_2)
BaseChl_2021_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_2.csv")
write.csv(BaseChl_2021_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:3
############################
# Import data
BaseChl_2021_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_3, BaseChl_2021_3)
BaseChl_2021_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_3.csv")
write.csv(BaseChl_2021_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:4
############################
# Import data
BaseChl_2021_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_4, BaseChl_2021_4)
BaseChl_2021_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_4.csv")
write.csv(BaseChl_2021_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:5
############################
# Import data
BaseChl_2021_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_5, BaseChl_2021_5)
BaseChl_2021_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_5.csv")
write.csv(BaseChl_2021_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:6
############################
# Import data
BaseChl_2021_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_6, BaseChl_2021_6)
BaseChl_2021_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_6.csv")
write.csv(BaseChl_2021_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:7
############################
# Import data
BaseChl_2021_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_7, BaseChl_2021_7)
BaseChl_2021_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_7.csv")
write.csv(BaseChl_2021_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:8
############################
# Import data
BaseChl_2021_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_8, BaseChl_2021_8)
BaseChl_2021_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_8.csv")
write.csv(BaseChl_2021_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:9
############################
# Import data
BaseChl_2021_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_9, BaseChl_2021_9)
BaseChl_2021_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_9.csv")
write.csv(BaseChl_2021_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:10
############################
# Import data
BaseChl_2021_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_10, BaseChl_2021_10)
BaseChl_2021_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_10.csv")
write.csv(BaseChl_2021_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:11
############################
# Import data
BaseChl_2021_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_11, BaseChl_2021_11)
BaseChl_2021_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_11.csv")
write.csv(BaseChl_2021_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2021 & month:12
############################
# Import data
BaseChl_2021_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2021_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2021_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2021_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2021_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2021_12, BaseChl_2021_12)
BaseChl_2021_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2021_12.csv")
write.csv(BaseChl_2021_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:1
############################
# Import data
BaseChl_2022_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_1, BaseChl_2022_1)
BaseChl_2022_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_1.csv")
write.csv(BaseChl_2022_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:2
############################
# Import data
BaseChl_2022_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_2, BaseChl_2022_2)
BaseChl_2022_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_2.csv")
write.csv(BaseChl_2022_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:3
############################
# Import data
BaseChl_2022_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_3, BaseChl_2022_3)
BaseChl_2022_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_3.csv")
write.csv(BaseChl_2022_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:4
############################
# Import data
BaseChl_2022_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_4, BaseChl_2022_4)
BaseChl_2022_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_4.csv")
write.csv(BaseChl_2022_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:5
############################
# Import data
BaseChl_2022_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_5, BaseChl_2022_5)
BaseChl_2022_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_5.csv")
write.csv(BaseChl_2022_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:6
############################
# Import data
BaseChl_2022_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_6, BaseChl_2022_6)
BaseChl_2022_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_6.csv")
write.csv(BaseChl_2022_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:7
############################
# Import data
BaseChl_2022_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_7, BaseChl_2022_7)
BaseChl_2022_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_7.csv")
write.csv(BaseChl_2022_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:8
############################
# Import data
BaseChl_2022_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_8, BaseChl_2022_8)
BaseChl_2022_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_8.csv")
write.csv(BaseChl_2022_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:9
############################
# Import data
BaseChl_2022_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_9, BaseChl_2022_9)
BaseChl_2022_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_9.csv")
write.csv(BaseChl_2022_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:10
############################
# Import data
BaseChl_2022_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_10, BaseChl_2022_10)
BaseChl_2022_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_10.csv")
write.csv(BaseChl_2022_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:11
############################
# Import data
BaseChl_2022_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_11, BaseChl_2022_11)
BaseChl_2022_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_11.csv")
write.csv(BaseChl_2022_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2022 & month:12
############################
# Import data
BaseChl_2022_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2022_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2022_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2022_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2022_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2022_12, BaseChl_2022_12)
BaseChl_2022_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2022_12.csv")
write.csv(BaseChl_2022_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:1
############################
# Import data
BaseChl_2023_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_1, BaseChl_2023_1)
BaseChl_2023_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_1.csv")
write.csv(BaseChl_2023_1, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:2
############################
# Import data
BaseChl_2023_2 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_2 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_2) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_2) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_2)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_2.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_2, BaseChl_2023_2)
BaseChl_2023_2$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_2.csv")
write.csv(BaseChl_2023_2, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:3
############################
# Import data
BaseChl_2023_3 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_3 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_3) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_3) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_3)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_3.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_3, BaseChl_2023_3)
BaseChl_2023_3$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_3.csv")
write.csv(BaseChl_2023_3, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:4
############################
# Import data
BaseChl_2023_4 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_4 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_4) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_4) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_4)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_4.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_4, BaseChl_2023_4)
BaseChl_2023_4$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_4.csv")
write.csv(BaseChl_2023_4, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:5
############################
# Import data
BaseChl_2023_5 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_5 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_5) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_5) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_5)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_5.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_5, BaseChl_2023_5)
BaseChl_2023_5$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_5.csv")
write.csv(BaseChl_2023_5, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:6
############################
# Import data
BaseChl_2023_6 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_6 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_6) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_6) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_6)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_6.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_6, BaseChl_2023_6)
BaseChl_2023_6$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_6.csv")
write.csv(BaseChl_2023_6, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:7
############################
# Import data
BaseChl_2023_7 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_7 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_7) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_7) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_7)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_7.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_7, BaseChl_2023_7)
BaseChl_2023_7$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_7.csv")
write.csv(BaseChl_2023_7, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:8
############################
# Import data
BaseChl_2023_8 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_8 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_8) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_8) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_8)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_8.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_8, BaseChl_2023_8)
BaseChl_2023_8$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_8.csv")
write.csv(BaseChl_2023_8, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:9
############################
# Import data
BaseChl_2023_9 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_9 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_9) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_9) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_9)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_9.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_9, BaseChl_2023_9)
BaseChl_2023_9$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_9.csv")
write.csv(BaseChl_2023_9, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:10
############################
# Import data
BaseChl_2023_10 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_10 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_10) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_10) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_10)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_10.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_10, BaseChl_2023_10)
BaseChl_2023_10$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_10.csv")
write.csv(BaseChl_2023_10, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:11
############################
# Import data
BaseChl_2023_11 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_11 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_11) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_11) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_11)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_11.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_11, BaseChl_2023_11)
BaseChl_2023_11$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_11.csv")
write.csv(BaseChl_2023_11, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2023 & month:12
############################
# Import data
BaseChl_2023_12 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2023_12 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2023_12) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2023_12) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_12)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2023_12.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2023_12, BaseChl_2023_12)
BaseChl_2023_12$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2023_12.csv")
write.csv(BaseChl_2023_12, csv_filename, fileEncoding='cp949', row.names=FALSE)

############################
# year:2024 & month:1
############################
# Import data
BaseChl_2024_1 <- read.csv("BaseChl.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

chlComplete_2024_1 <- read.csv("chlComplete.csv", fileEncoding = "cp949") %>% 
            filter(complete.cases(mean_altitude)) %>%
            distinct(GRID_1K_CD, year, month, .keep_all = TRUE)

# Create spatial objects
coordinates(BaseChl_2024_1) <- ~center_x + center_y + mean_altitude
coordinates(chlComplete_2024_1) <- ~center_x + center_y + mean_altitude

# Variogram and kriging
variogram_model <- autofitVariogram(chl ~ center_x + center_y + mean_altitude, chlComplete_2024_1)
png_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/03.Variogram/variogram_2024_1.png")
png(filename = png_filename)
plot(variogram_model)
dev.off()
  
# Universal kriging
kriging_results <- autoKrige(chl ~ center_x + center_y + mean_altitude, chlComplete_2024_1, BaseChl_2024_1)
BaseChl_2024_1$ok_chl <- kriging_results$krige_output$var1.pred
  
# Export results
csv_filename <- sprintf("S:/03.Chlorophyll_Neurodegenerative/04.Output/04.ChlorophyllData/Nakdong_chl_2024_1.csv")
write.csv(BaseChl_2024_1, csv_filename, fileEncoding='cp949', row.names=FALSE)
# Define years and months
years <- 2017:2021
months <- 1:12

# Apply lapply to process data for each year and month combination
data_processed <- lapply(years, function(yr) {
  lapply(months, function(mth) {
    print(paste("Processing for year:", yr, "and month:", mth))
    data %>%
      filter(year == yr, month == mth) %>%
      distinct(GRID_1K_CD, year, month, .keep_all = TRUE)
  })
})

# Flatten the list structure (if necessary)
data_processed <- do.call(rbind, unlist(data_processed, recursive = FALSE))
