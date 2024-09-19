#### Preamble ####
# Purpose: Tests for Data
# Author: Diana Shen 
# Date: 19 September 2024
# Contact:diana.shen@mail.utoronto.ca 
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Test data ####
data<-read_csv("data/raw_data/Marriage.csv")
# Test for negative numbers
data$MARRIAGE_LICENSES|>min()<=0

#Test for NAs
all(is.na(data))