######## Data creator Aston 2018

# Setup
set.seed(11)
library(CoRC)
loadModel("Models/Aston2018Breakthrough_model.cps")

# Run Timecourse and select measurements
timecourse <- runTimeCourse(duration = 10)$result
viral_load <- timecourse[c(1,3, 6, 11, 16, 21, 26, 36, 41, 51, 71, 101),c(1,4)]

# Add noise
noise      <- rnorm(nrow(viral_load), mean = 1, sd = 0.05)
viral_load$`Viral Load (V)` <- viral_load$`Viral Load (V)`*noise

colnames(viral_load) <- c("Time", "V")

plot(viral_load$Time, viral_load$V)
# Save as .csv
write.table(viral_load , file = "Data/Aston2018_data3.csv")


