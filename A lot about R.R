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



