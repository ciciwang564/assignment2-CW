Penguin_data <- read.csv("/Users/wangminan/Downloads/penguins.csv")

#####Find the average body mass for different penguin species
aggregate(body_mass_g ~ species, data = Penguin_data, FUN = mean, na.rm = TRUE)

boxplot(body_mass_g ~ species, data = Penguin_data,
        main = "Body Mass by Species",
        xlab = "Species", ylab = "Body Mass (g)")

#####Find the avg bill length for penguin with different sex
mean_bill <- aggregate(bill_length_mm ~ sex, data = Penguin_data, FUN = mean, na.rm = TRUE)

barplot(mean_bill$bill_length_mm,
        names.arg = mean_bill$sex,
        col = c("lightpink", "lightblue"),
        main = "Average Bill Length by Sex",
        xlab = "Sex",
        ylab = "Average Bill Length (mm)")

