#Tidying data for P.Blochii data sheet 
#loading packages 
library(tidyverse)
library(readxl)
library(dplyr)

#reading in data 
data <- read_excel("P_blochii dataset.xlsx")
write_csv(data, "P_blochii_subset.csv")
View(P_blochii_dataset)

#print a summary 
P_blochii_dataset
#inspect structure 
glimpse(P_blochii_dataset)

#TIDYING MY DATASET 
#Summarising mean mass by sex 
mass_summary <- P_blochii_dataset %>%
  group_by(Sex) %>%
  summarise(mean_mass = mean(Mass, na.rm = TRUE))
print(mass_summary)

#Boxplot of sex and mean mass
ggplot(P_blochii_dataset, aes(x = Sex, y = Mass)) +
  geom_boxplot() +
  theme_minimal()

#TIDYING DATASET - CASE 2
P_blochii_dataset2 <- P_blochii_dataset %>%
  mutate(Season = factor(Season,
                         levels = c(1, 2, 3, 4),
                         labels = c("Summer", "Autumn", "Winter", "Spring")))
P_blochii_dataset2

#Summarising mean mass by season 
season_summary <- P_blochii_dataset2 %>%
  group_by(Season) %>%
  summarise(mean_mass = mean(Mass, na.rm = TRUE),
            sd_mass = sd(Mass, na.rm = TRUE),
            n = n())
season_summary

#Plotting mean mass by season 
ggplot(P_blochii_dataset2, aes(x = Season, y = Mass)) +
  geom_boxplot() +
  theme_minimal()



