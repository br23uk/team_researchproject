# 8. Mosaic plot of raw counts
# ------------------------------
mosaicplot(summary_table, main="Shark Attack Fatalities by Sex",
           color=c("lightblue","red"))   
# 9. Chi-square test of independence
# ==============================

# Create a contingency table of Sex vs Fatal
sex_fatal_table <- table(shark_clean$Sex, shark_clean$Fatal)
print("Contingency Table:")
print(sex_fatal_table)  
# Perform Chi-square test
chi_test <- chisq.test(sex_fatal_table)