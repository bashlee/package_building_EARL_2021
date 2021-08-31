stat_summary <- function(x, na.rm = TRUE){
  
  # Check the inputs are of the correct form
  if(!is.numeric(x)) stop("You must provide a numeric vector")
  
  x_mean <- mean(x, na.rm = na.rm)
  x_var <- var(x, na.rm = na.rm)
  x_range <- range(x, na.rm = na.rm)
  
  c("Min" = x_range[1], "Mean" = x_mean,
    "Variance" = x_var, "Max" = x_range[2])
  
}
