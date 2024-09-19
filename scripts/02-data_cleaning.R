#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers
# Author: Diana Shen 
# Date: 19 September 2024
# Contact:diana.shen@mail.utoronto.ca 
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(janitor)
library(lubridate)
library(tidyr)
#### Clean data ####
raw_data <- read_csv("data/raw_data/Marriage.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names()|>
  separate(col = time_period,
           into=c("year","month"),
           sep="-")|>
mutate(date=lubridate::ymd(paste(year,month,"01",sep="-")))
#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
