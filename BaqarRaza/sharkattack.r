# ==============================
# Shark Attack Fatalities Analysis
# ==============================

# Load required library
library(ggplot2)

# ------------------------------
# 1. Load dataset
# ------------------------------
shark_data <- read.csv("D:attacks.csv",
                       stringsAsFactors = FALSE)
# ------------------------------
# 2. Inspect column names
# ------------------------------
colnames(shark_data)  # Check exact column names

# Find Fatal column (in case of hidden spaces)
fatal_col <- grep("Fatal", colnames(shark_data), value = TRUE)
print(fatal_col)  # Just to confirm column name

# Rename Fatal column to simple name
names(shark_data)[grep("Fatal", names(shark_data))] <- "Fatal"
