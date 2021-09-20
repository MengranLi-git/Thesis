############################## library package ################################
library(data.table)
library(tidyverse)
library(KernSmooth)
library(leaflet)
library(maps)

library(stringr)
############################### read data #####################################
data <- read.csv("data/River_flows.csv")
data <- as.data.table(data)

data[!complete.cases(data),]

data[Flow < 0]

data <- data %>% mutate(Reiver = word(Station,1))

unique(data$Reiver)
