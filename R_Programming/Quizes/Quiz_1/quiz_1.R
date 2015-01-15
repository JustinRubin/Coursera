## Import data
data <- read.csv(file="R_Programming/Quizes/Quiz_1/hw1_data.csv")

## Question 12
q12 <- data[1:2,]

dim(data)

head(data, n = 5)
tail(data, 2)

data[47,]

ozone <- data[,1]
length(which(is.na(ozone)))
ozoneNoNA <- ozone[!is.na(ozone)]
length(ozoneNoNA)
mean(ozoneNoNA)

## Question 18
q18 <- data[data$Ozone>31 & data$Temp>90,]
q18Solar <- q18$Solar.R
q18Solar <- q18$Solar.R[!is.na(q18$Solar.R)]
mean(q18Solar)

## Question 19
q19 <- data[data$Month == 6,]
q19Temp <- q19$Temp
mean(q19Temp)

## Question 20
q20 <- data[data$Month == 5,]
q20Ozone <- q20$Ozone[!is.na(q20$Ozone)]
max(q20Ozone)