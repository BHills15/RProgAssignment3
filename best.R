## function best(state, outcome) will read outcome data
## from each state and determine lowest 30-day death rate

# inputs best("TX", "heart attack") /returns CYPRESS...
# best("MD", "heart attack) /returns JOHNS...
#best("TX", "heart failure") /returns FORT...
#best("MD", "pneumonia")  /returns GREATER...
#best("BB", "heart attack") /returns error "invalid state"
#best("NY", "hert attack") /returns error "invalid outcome"

library(dplyr)
setwd("C:/Users/B/Toolbox/RProgAssignment3")
data <- read.csv("outcome-of-care-measures.csv")

best <- function(state, outcome){
  state <- filter(data$State = state)
   # if state = NULL stop error : invalid state
  mort.columns <- select(data, ncol = 2, ncol = 11, ncol = 17, ncol = 23, contains = outcome)
    min.outcome <- min_rank(mort.columns)
  }