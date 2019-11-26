                          #R datasets can be explored by using...
datasets::
  
#Looking for the help on datasets?
library(help = 'datasets')

                          ###Vector Math###
numbers1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
numbers1 <- c(1:9)
two.numbers <- many.numbers*2
numbers2 <- c(2, 4, 5, 7, 3, 5, 9, 7, 1)
numbers1 + numbers2

"What happens if we try to do math with two vectors of different length? 
Let's see that below"

less_numbers <- c(2, 3)
less_numbers + numbers1

"The process of recycling comes into picture. The shorter vector will be
used on a longer vector multiple times and this is the same in case of 
other operations"

                          ###Subsetting###

#Let's take a vector and try different ways of subsetting it

numbers1 <- c(1:10)

#subset an item by the position
numbers1[2]

#Subset multiple sequence items based on position
numbers1[1:3]

#Subset multiple non sequence items based on position
numbers1[c(1, 3, 6, 9)]

#Subset items excluding a few
numbers1[-3]
numbers1[-3:-5]
numbers1[-c(3:5)] #This is same as the above
numbers1[-c(3, 7)]

#Subsetting by using a logical vector
logi <- rep(c(TRUE, FALSE), 5)
numbers1[logi]

#Let's dive into the subsetting of dataframes
#Create a dataframe
data <- data.frame(Name = LETTERS, Score = round(rnorm(26, mean = 78, sd = 10),0), Id = 1:26) 
head(data)

#start subsetting
data[3,] #entire 3rd row
data[,3] #entire 3rd column by position
data['Name'] #entire 1st column by column name
data[3:7, 2:3] #Choice of rows and columns

data[data$Score > 80,] #Subsetting rows with score > 80
data[data$Score > 80 & data$Id < 20,] #Subsetting rows with score > 80 and Id < 20
