## 1. Define Rpackages
## R packages are extensions that are installed in R studio to allow use of codes, 
## e.g ggplot allow the ploting of graphs.

## 2. Functions to install R packages.
## ..press packages on the pane , then click install then type the package and click install.
##...install.packages()

## 3. After installation, what are two ways to use packages in 
##library() to load the package
## :: to directly use the package

##4.Install the following packages:
##a. tidyverse
install.packages("tidyverse")
library(tidyverse)
##b. readxl
install.packages("readxl")
library(readxl)
##c. googlesheets4
install.packages("googlesheets4")
library(googlesheets4)
##d. readODS 
install.packages("readODS")
library(readODS)

##What package(s) can you use to import data from IBM SPSS, and Stata
##library(haven) 
##dataset <- read_sav(NULL)
##View(dataset)

##FILE EXTENSIONS.
##1. What is/are the main file extension(s) of the following data analysis software
## a. (.xls , xlsx)
## b. .ods
## c. .do , .dta
## d. .sav
## e. .gsheet
##2. googlesheets you only work with them online,available only on the internet.
## also a need to authenticate the google account.

##3. difference between csv and txt files is that csv are separated by comma ,
##txt separated by tab.
library(tibble)
Fao_data <-read.csv("data/fao_wood_data.csv")
##a. .csv
head(Fao_data)
print(Fao_data,n=6,width=Inf)


## c. comma

##5. Correctly import the North-East Atlantic Catches sheet of the Versions_log.xlsx excel
##file into RStudio. Give the data a name of your choosing. With the data return:
New_north <-read_excel("data/Versions_log.xlsx",sheet=2)
head(New_north)
New_north |>
  tail(6)

# Select 10 random rows
random_sample <-  sample(New_north,10, replace = FALSE, prob = NULL)
print(random_sample)

Country <- read_excel("data/Versions_log.xlsx",sheet=5)
head(Country)
Country |>
  tail(6)
Latin_species <- read_excel("data/Versions_log.xlsx",sheet=4)
head(Latin_species)
Latin_species |>
  tail(6)
library(readODS)
Soft_wood <-read_ods("data/Ch2_Timber.ods",sheet = 3)
print(Soft_wood)
Sawmill_survey <- read_ods("data/Ch2_Timber.ods",sheet="Table_2_7b")
print(Sawmill_survey)
Plot_11 <- read.delim(file = "data/plot_11_tvol.txt")
View(Plot_11)
Sites <-unique("sites")
length(Sites)
Plots <-unique("plots")
length(Plots)
missing_var <-is.na(Plot_11)
length(missing_var)
#yes,

library(googlesheets4)
gs4_auth()
black_cherry <- "1l7COp-Ps5Zy8X0nnw0grnWgB1o79uwRmK1ncqtm56AE"
read_sheet(black_cherry)
Black_cherry <- head(black_cherry)
print(Black_cherry)
View(Black_cherry)
