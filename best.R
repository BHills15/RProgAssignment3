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
# tbl_df(csv)
# 
# filter(is.na = "Not Available")%>%
#   filter(csv, State = state)

# library(dplyr)
# setwd("C:/Users/B/Toolbox/RProgAssignment3")
# best <- function(state){
#   csv <- read.csv("outcome-of-care-measures.csv", 
#                     colClasses = "character",
#                     na.strings = "Not Available")
#      
#   }

# https://github.com/RobRolleston/datasciencecoursera/
# youtube.com //search : Hadley Wickham's "dplyr" tutorial at useR 2014 (1/2)
# https://class.coursera.org/rprog-010/forum/thread?thread_id=231#comment-2951

library(dplyr)
setwd("C:/Users/B/Toolbox/RProgAssignment3")

csv <- read.csv("outcome-of-care-measures.csv",
                  colClasses="character")
       tbl_df(csv)
outcome <- function(){
  if outcome == "heart attack"{
    arrange(csv, contains == "from.Heart.Attack")%>%
      slice(csv, nrow[1, "Hospital.Name"])
  }
  else if outcome == "heart failure"{
    arrange(csv, contains == "30.Day.Death..Mortality..Rates.from.Heart.Failure")%>%
      slice(csv, nrow[1, "Hospital.Name"])
   }
  else if outcome == "heart attack"{
  arrange(csv, contains == "30.Day.Death..Mortality..Rates.from.Heart.Attack")%>%
    slice(csv, nrow[1, "Hospital.Name"])
  }
  else return "error: invalid outcome"
}

best <- function(state, outcome){
  csv <- readcsv()
  filter(outcome, State == state)
    if (nrow(csv) == 0){
      stop ("error: invalid state")
    }
}