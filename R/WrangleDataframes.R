# Jake Yeung
# Date of Creation: 2020-11-05
# File: ~/projects/JFuncs/R/WrangleDataframes.R
# 

cbind.fill.lst <- function(mats.lst, all.rnames, fill = 0){
  mats.lst.filled <- lapply(mats.lst, function(mat.tmp){
    missing.rnames <- all.rnames[!all.rnames %in% rownames(mat.tmp)]
    mat.tmp.to.fill <- matrix(data = fill, nrow = length(missing.rnames), ncol = ncol(mat.tmp), dimnames = list(missing.rnames, colnames(mat.tmp)))
    mat.tmp.bind <- rbind(mat.tmp, mat.tmp.to.fill)
    mat.tmp.bind <- mat.tmp.bind[all.rnames, ]
    return(mat.tmp.bind)
  })
  return(do.call(cbind, mats.lst.filled))
}
