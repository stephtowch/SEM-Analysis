#Univariate Outliers


# Load the dplyr package
library(dplyr)
# Load the readr package
library(readr)

# Load the data
options(scipen = 999)
options(max.print = 1000000)
data <- readr::read_csv(/data/data.csv")

# Assuming data is your dataframe
df <- data

# List of column names that you want to calculate z-scores for
columns <- c("X1", "X2", "X3", "X4", "X5", "X6", "X7",
             "M1_1", "M1_2", "M1_3", "M1_4", "M1_5", "M1_6", "M1_7", "M1_8", "M1_9", "M1_10", "M1_11", "M1_12",
             "M2_1", "M2_2", "M2_3", "M2_4", "M2_5", "M2_6", "M2_7",
             "Y1", "Y2", "Y3", "Y4", "Y5", "Y6", "Y7", "Y8", "Y9")

# Function to calculate z-score
z_score <- function(x) {
  return((x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE))
}

# Apply the z_score function to each column and store the results in a new dataframe
df_zscores <- df %>% mutate(across(all_of(columns), z_score, .names = "z_{.col}"))

# Filter out rows where any of the z-scores are greater than ±3.29
df_filtered <- df_zscores %>% filter(if_any(starts_with("z_"), ~abs(.) > 3.29))

# Write the filtered dataframe to a CSV file - Update your filepath
write_csv(df_filtered, "C:/Users/filtered_data.csv")
