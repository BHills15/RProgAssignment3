## function best(state, outcome) will read outcome data
## from each state and determine lowest 30-day death rate

# inputs best("TX", "heart attack") /returns CYPRESS...
# best("MD", "heart attack) /returns JOHNS...
#best("TX", "heart failure") /returns FORT...
#best("MD", "pneumonia")  /returns GREATER...
#best("BB", "heart attack") /returns error "invalid state"
#best("NY", "hert attack") /returns error "invalid outcome"

#filter(data.df, State == state)
#select(data.df, Hospital.Name,
  #      Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,
  #      Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure,
  #      Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)


library(dplyr)
setwd("C:/Users/HillsLaptop/Documents/R/rprog-data-ProgAssignment3-data")
outcome <- read.csv("outcome-of-care-measures.csv", 
                    colClasses = "character",
                    na.strings = "Not Available")
outcome.state <- as.numeric(outcome[, 11:47])
outcome <- arrange(outcome.state, rate)

