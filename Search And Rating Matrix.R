SearchMatrix <- cbind(movie_data[,1:2], genre_mat2[]) #Creating Search Matrix
head(SearchMatrix)    

#Creating Rating Matrix
ratingMatrix <- dcast(rating_data, userId~movieId, value.var = "rating", na.rm=FALSE)
ratingMatrix <- as.matrix(ratingMatrix[,-1]) #remove userIds
#Convert rating matrix into a recommenderlab sparse matrix
ratingMatrix <- as(ratingMatrix, "realRatingMatrix")
ratingMatrix
