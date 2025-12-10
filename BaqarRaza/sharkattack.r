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
