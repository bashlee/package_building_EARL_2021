sample_from_data <- function(data, size, replace = FALSE, ...){
  
  if(!is.numeric(size)){
    stop("Size must be a numeric integer value")
  }
  
  lengthData <- nrow(data)
  
  if(!replace & size > lengthData){
    stop("Cannot sample greater than the data size without replacement")
  }
  
  sample_rows <- sample(1:nrow(data), size, replace = replace, ...)
  
  data[sample_rows, ]
  
}