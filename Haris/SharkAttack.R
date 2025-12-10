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