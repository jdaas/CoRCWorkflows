######## Data creator Aston 2018

# Setup
set.seed(11)
library(CoRC)
loadSBML("Models/Leloup2004Circadian_model.xml")


# Run Timecourse and select measurements
timecourse <- runTimeCourse(duration = 50)$result
data       <- timecourse[c(0,1,3,5,6,9,12,15,24,
                           30, 36, 42, 46)*2+1,c("Time", "MP", "MC", "MB", 
                            "PTot", "CTot", "BTot")]


# Add noise
noise      <- rnorm(nrow(data)*(ncol(data)-1), mean = 1, sd = 0.05)
data[,-1]  <- data[,-1]*noise


# Save as .csv
write.table(data , file = "Data/Leloup2004Circadian.csv")


