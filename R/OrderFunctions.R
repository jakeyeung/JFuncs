# Jake Yeung
# OrderFunctions.R
#  
# 2019-01-10

OrderDecreasing <- function(dat, jfactor, jval){
  # Reorder factors by decreasing value of jval
  dat[[jfactor]] <- factor(dat[[jfactor]], levels = dat[[jfactor]][order(dat[[jval]], decreasing = TRUE)])
  return(dat)
}
