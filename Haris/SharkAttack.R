# 3. Clean Sex column
# ------------------------------
shark_data$Sex <- toupper(trimws(shark_data$Sex))
shark_data$Sex[shark_data$Sex %in% c("MALE", "M")] <- "M"
shark_data$Sex[shark_data$Sex %in% c("FEMALE", "F")] <- "F"
# 4. Clean Fatal column
# ------------------------------
shark_data$Fatal <- toupper(trimws(shark_data$Fatal))
shark_data$Fatal[shark_data$Fatal %in% c("Y", "YES", "FATAL")] <- "Y"
shark_data$Fatal[shark_data$Fatal %in% c("N", "NO")] <- "N"
# 5. Remove rows with missing or invalid data
# ------------------------------
shark_clean <- subset(shark_data, Sex %in% c("M","F") & Fatal %in% c("Y","N"))
# Optional: Extract key values for report
chi_statistic <- chi_test$statistic
chi_df <- chi_test$parameter
chi_pvalue <- chi_test$p.value

cat("Chi-square statistic =", round(chi_statistic,2), "\n")
cat("Degrees of freedom =", chi_df, "\n")
cat("p-value =", round(chi_pvalue,4), "\n")