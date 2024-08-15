read.delim("data/ASFIS_sp_2023.txt")
View("data/ASFIS_sp_2023.txt")
ASFIS_sp_2023 |> ncol()

install.packages("dplyr")
library(dplyr)
# Create a sample data frame

# Check which rows have complete data
complete_rows <- complete.cases(ASFIS_sp_2023)
num_complete_rows <- sum(complete_rows)
print(num_complete_rows)
library(tidyverse)
install.packages("tidyverse")

Top_families <- ASFIS_sp_2023 |> 
slice_max(order_by = Family,n=10)
print(Top_families)

ASFIS_sp_2023 |> 
slice_min(order_by = ISSCAAP_Group,n=10)

#2.

#3.

sum(!is.na(ASFIS_sp_2023$French_name))
#4
sum(!is.na(ASFIS_sp_2023$English_name))
#5
nrow(ASFIS_sp_2023)
ASFIS_sp_2023$Order <- as.character(ASFIS_sp_2023$Order)
ASFIS_sp_2023$order_lower <- tolower(ASFIS_sp_2023$Order)

ASFIS_sp_2023 <- ASFIS_sp_2023 |>
  mutate(order_lower = tolower(Order))
#6
filtered_df <- ASFIS_sp_2023 |>
  filter(order_lower == "pelecaniformes" & !is.na(Spanish_name))
#7
 ASFIS_sp_2023 |>
  filter(order_lower %in% c("bryozoa", "squamate")) |>
  group_by(Family) |>
  summarize(count = n()) |>
  filter(count > 1) |>
  arrange(desc(count))
 #9
 family_counts <- ASFIS_sp_2023 |>
   group_by(Family) |>
   summarize(count = n())
   family_counts |>
   filter(count >= 100)
   

 