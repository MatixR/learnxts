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


# Convert date column to a time-based class
flights$date <- as.Date(flights$date)

# Convert flights to an xts object using as.xts
flights_xts <- as.xts(flights [ , -5], order.by = flights$date)

# Check the class of flights_xts
class(flights_xts)

# Examine the first five lines of flights_xts
head(flights_xts, 5)
