numeric_summary <- function(vec, na.rm = TRUE){
  
  # Check the inputs are of the correct form
  if(!is.numeric(vec)) stop("You must provide a numeric vector")
  
  if(!is.logical(na.rm)) stop("na.rm must be a logical (TRUE/FALSE) value")
  
  if(length(vec) <= 1) warning(paste("Some summaries may be incorrect as length of input vector is", length(vec)))
  
  # get the numeric summaries
  vec_summaries <- stat_summary(vec, na.rm = na.rm)
  
  # add the number of missing values
  out <- c(vec_summaries, "NAs" = sum(is.na(vec)))
  
  return(out)
  
}
