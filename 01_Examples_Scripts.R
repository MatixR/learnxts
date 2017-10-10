# studing xts and zoo packages
install.packages("xts")
library(xts)
# XTS = MATRIX + INDEX

# creating a matrix:
x <- matrix(1:4, ncol = 2, nrow = 2)

# creating an index
idx <- as.Date(c("2015-01-01", "2015-02-01"))

# creating a time series by using xts function and order by index:
X <- xts(x, order.by = idx)

X
# https://www.rdocumentation.org/packages/xts/versions/0.9-7
