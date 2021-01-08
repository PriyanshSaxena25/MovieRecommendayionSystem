#using recommendeRlabs 
recommendation_model <- recommenderRegistry$get_entries(dataType = "realRatingMatrix")
names(recommendation_model)

lapply(recommendation_model, "[[", "description")

#implementing model(Single) - Item Based Collaborative Filtering 

recommendation_model$IBCF_realRatingMatrix$parameters
