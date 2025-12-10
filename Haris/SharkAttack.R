# 3. Clean Sex column
# ------------------------------
shark_data$Sex <- toupper(trimws(shark_data$Sex))
shark_data$Sex[shark_data$Sex %in% c("MALE", "M")] <- "M"
shark_data$Sex[shark_data$Sex %in% c("FEMALE", "F")] <- "F"