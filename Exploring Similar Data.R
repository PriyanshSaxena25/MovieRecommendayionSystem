similarity_mat <- similarity(ratingMatrix[1:4, ],
                             method = "cosine",
                             which = "users") #Creating similarity Matrix to Explore similarities in data
as.matrix(similarity_mat)

image(as.matrix(similarity_mat), main = "User's Similarities")

#delineating the similarity that is shared between the films
movie_similarity <- similarity(ratingMatrix[, 1:4], method =
                                 "cosine", which = "items")
as.matrix(movie_similarity)

image(as.matrix(movie_similarity), main = "Movies similarity")


#Extracting Most Unique Ratings 
rating_values <- as.vector(ratingMatrix@data)
unique(rating_values) 

#creating table for most unique Ratings 
Table_of_Ratings <- table(rating_values) # creating a count of movie ratings
Table_of_Ratings
