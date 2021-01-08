movie_data <- read.csv("movies.csv",stringsAsFactors=FALSE)
rating_data <- read.csv("ratings.csv")
str(movie_data)
summary(movie_data)
head(movie_data) #First 6 items
summary(rating_data)
head(rating_data)
