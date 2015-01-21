pollutantmean <- function(directory, pollutant, id)
{
  path <- "R_Programming/Programming_Assignments/Assignment_1/"
  
  # Initialize a vector to store the mean pollutant values for each csv file
  meanPollutant <- numeric(length(id))
  
  for (i in seq_along(id))
  {
    # Import the current data file
    j <- id[i]
    currentData <- read.csv(sprintf('%s/%s/%03d.csv', path, directory, j))
    
    # Extract the pollutant of interest
    relevantData <- currentData[pollutant]
    
    # Store the mean value of the current csv file
    meanPollutant[i] <- mean(relevantData[!is.na(relevantData)])
  }

totalMean <- mean(meanPollutant)

totalMean

}