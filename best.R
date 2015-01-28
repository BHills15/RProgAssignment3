## function best(state, outcome) will read outcome data
## from each state and determine lowest 30-day death rate

# inputs best("TX", "heart attack") /returns CYPRESS...
# best("MD", "heart attack) /returns JOHNS...
#best("TX", "heart failure") /returns FORT...
#best("MD", "pneumonia")  /returns GREATER...
#best("BB", "heart attack") /returns error "invalid state"
#best("NY", "hert attack") /returns error "invalid outcome"

str(data)
best <- function(state, outcome){
  state <- data(do.call(pmin, lapply(1:ncol(data), function(state)data[state, ])))
    if state!(data, %in% [, 7] ) <- "error : invalid state"
}