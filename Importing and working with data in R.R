### PART I: Working with the mtcars data set

  # Note: Type ?mtcars in the console and press ENTER to see information about this data set in the Help
          # panel in the lower right corner of R Studio.

# 1. Make a dataframe object called 'car_data' by calling the mtcars data that comes with R Studio
car_data <- mtcars

# 2. Verify how many rows and columns are in the car_data dataframe
nrow(car_data)
length(car_data)

# 3. Verify the row and column names in the car_data dataframr
row.names(car_data)
names(car_data)

# 4. Look at the first 10 rows of the car_data dataframe 
head(car_data,10)

# 5. Make a table that shows the frequency of cars by number of cylinders in the engine
table(car_data$cyl)

# 6. Make a nicely-formatted table that shows the frequency and percent of cars by number
    # of cyclinders in the engine. You will need to install and load the janitor package.
library(janitor)
tabyl(car_data,cyl)

# 7. Make a new dataframe called cyl_freq that stores the results of the nicely-formatted table
cyl_freq <- tabyl(car_data,cyl)

# 8. Make a list of all the values in the cyl variable in the car_data dataframe
list(car_data$cyl)

# 9. Make a list of all the unique values in the cyl variable in the car_data dataframe
list(unique(car_data$cyl))

# 10. Store the unique cyclinders in a new dataframe object
cyl_list <- list(unique(car_data$cyl))

# 11. Verify how many items are in the list called cyl_list. (Should be 3)
lengths(cyl_list)

# 12. Store the number of items in the list called cyl_list as an object.
cyl_count <- lengths(cyl_list)

### PART II: Working with SPARCS data

# 1.Load required packages
library(tidyverse)
library(data.table)

# 2. Import file (.csv or .txt)
  ## In your computer's file system, navigate to the .csv or .txt file you want to import
  ## Right-click on the file and copy the full path to this file
  ## Create an object called sparcs_data and paste the path inside the fread function
  ## After pasting, be sure to change slashes to front slashes or this command will not work.

sparcs_data <- fread('/Users/ericasmith/Library/Mobile Documents/com~apple~CloudDocs/Fisher/INDEP STUDY/Summer 2022/SPARCS 2017 DI Monroe County.csv')

# 3. Verify the number of rows and columns in the sparcs_data dataframe
nrow(sparcs_data) # Should be 112744
length(sparcs_data) # Should be 34

# 4. Make a new dataframe by selecting the first 100 records in the sparcs_data dataframe
sparcs_data_sample <- head(sparcs_data,100)

# 5. Use the clean_names() function from the janitor package to change the variable names to lower case with underscores 
sparcs_data <- sparcs_data %>%
  clean_names()

# 6. Make frequency tables of the unique facility names and payment typology 3 in the sparcs_data dataframe.
facility_list <- tabyl(sparcs_data,facility_name)

ins_typ3 <- tabyl(sparcs_data$payment_typology_3)

# 7. Import file (Excel). You will need to install and load the openxlsx package.
library(openxlsx)

# 8. Import file 
    ## In your computer's file system, navigate to the .xlsx file you want to import
    ## Right-click on the file and copy the full path to this file
    ## Create an object called sparcs_data and paste the path inside the fread function
    ## After pasting, be sure to change slashes to front slashes or this command will not work.

sparcs_data_excel <- read.xlsx('/Users/ericasmith/Library/Mobile Documents/com~apple~CloudDocs/Fisher/INDEP STUDY/Summer 2022/sparcs_excel.xlsx')

### PART III: Optional practice

# 1. Clean the variable names in the sparcs_data_excel dataframe
# 2. Make a frequency table containing the unique Gender values from the sparcs_data_excel dataframe
# 3. Make a new object containing the number of records in the sparcs_data_excel dataframe









