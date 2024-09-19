#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

#### Download data ####
library(opendatatoronto)
library(dplyr)
toronto_marriage <-
  # Each package is associated with a unique id  found in the "For 
  # Developers" tab of the relevant page from Open Data Toronto
  # https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/
  list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb") |>
  # Within that package, we are interested in the 2021 dataset
  filter(name == 
           "Marriage Licence Statistics Data.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()
#### Save data ####
write_csv(
  x = toronto_marriage,
  file = "Marriage.csv"
)

head(toronto_marriage)
         
