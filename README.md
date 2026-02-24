# P-Blochii-dataset-wrangling
#Binder Badge 
https://mybinder.org/v2/gh/isamull195-ops/P-Blochii-data-wrangling.git/HEAD

#Project overview 
This project focuses on tidying and summarizing the P_blochii dataset using R.
It includes data cleaning, mutating from numeric season codes to named factors, calculating summaries statistics of mass for both sex and season.
This dataset was used in a previous project.

#Dataset 
-The original dataset is stored in P_blochii dataset.xlxs
-I then turned it into a csv file for easier use stored as P_blochii subset.csv
-Columns in the dataset that i have used include: 
- 'Sex' - sex of the individual 
- 'Mass'- mass of the individual 
- 'Season' - numeric code for season (1 = Summer, 2 = Autumn, 3= Winter, 4 = Spring)

#Project objectives 
1. load and inspect the data 
2. Summarise mean mass by sex 
3. Create boxplot of mass by sex 
4. Convert numeric season codes to named factors
5. Summarize mean mass by season 
6. Create a boxplot of mass by season 

# Files in the Repository 
- 'P_blochii dataset.qmd' - Quarto file containing the r code for data tidying, summaries and plots 
- 'P_blochii dataset.xlxs' - Original dataset
- 'P_blochii_subset.csv' - cleaned datset in csv file format 
- 'README.md' - Project overview 

#R packages used 
- 'tidyverse' - for data wrangling and visualization 
- 'readxl' - to read Excel files 
- 'dplyr' - for data manipulation 
- 'quarto' - for rendering the '.qmd' file to a pdf 

#How to run 
1. clone this repository: 
https://github.com/isamull195-ops/P-Blochii-data-wrangling.git

2. Open R scripts 'data wrangling.R' and 'P_blochii datset.qmd'
3. Install required packages: tidyverse, dplyr, quarto
4. View the dataset 
5. Run the code on the scripts to recieve the outputs 

#Outputs 
- Summary tables of mean mass by sex and season 
- boxplots showing the mean mass by sex and season 

#Author 
Isabella Muller 
