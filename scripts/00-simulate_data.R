#### Preamble ####
# Purpose: Simulates the data
# Author: Diana Shen 
# Date: 19 September 2024
# Contact:diana.shen@mail.utoronto.ca 
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
start_date<-as.Date("2023-01-01")
end_date<-as.Date("2023-12-31")
number_of_dates<-10
#### Simulate data ####
data<-tibble(date=as.Date(runif(n=number_of_dates,min = as.numeric(start_date),
                                max = as.numeric(end_date)),
                          origin="1970-01-01"),
             number_of_marriage=rpois(n=number_of_dates,lambda = 15))

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")

