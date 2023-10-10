names <- c("2", "4", "6", "8")

age <- c(4,12,17,67 )

people <- data.frame(names, age)

head(people)

str(people)

glimpse(people)

colnames(people)

mutate(people, age_in_20 = age + 20)

fruits <- c("apple", "banana", "apricot", "grape", "peach")

rank <- c(5,7,4,3,6)

fruits_rank <- data.frame(fruits, rank)

head(fruits_rank)
