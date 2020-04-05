## Homework 1, problem 1

## a)

patients <- read.csv2('https://firebasestorage.googleapis.com/v0/b/uni-sofia.appspot.com/o/data%2FCOVID19_2020_open_line_list%20-%20outside_Hubei_subset.csv?alt=media&token=919a181b-6417-45fd-9314-91497bb4b0fc', stringsAsFactors = FALSE)

# b) Number of patients - We look at the number of observations
str(patients) 
#or
nrow(patients)

# c) Earliest and latest date of infection confirmation?
as.Date(patients$date_confirmation) 
summary(patients$date_confirmation) 

# d) What is the average age of the patients?
mean(patients$age)

# e) How many men and how many women are there in the sample? 
sum(patients$sex == "female")
sum(patients$sex != "female")

#f) Plot the frequency distribution of sex using a bar-chart 
windows()
freqGender <- table(patients$sex)
barplot(freqGender)
title('Gender distribution')

#g) What was the age of the youngest woman?
isFemale <- patients$sex == "female"
View (isFemale)
ageFemale <- patients$age[isFemale]
min(ageFemale)

#h) What was the age of the oldest man?
isMale <- patients$sex == "male"
View (isMale)
ageMale <- patients$age[isMale]
max(ageMale) 

#i) Is there a difference between the average age of male and female patients?
isMale <- patients$sex == "male"
View (isMale)
ageMale <- patients$age[isMale]
mean(ageMale)

isFemale <- patients$sex == "female"
View (isFemale)
ageFemale <- patients$age[isFemale]
mean(ageFemale)

#j) Compare the distribution of age between the countries using a box-plot.
windows()
boxplot(age ~ country, data = patients, horizontal = TRUE)
title('Boxplot for Age by Country')

