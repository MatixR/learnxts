# Load data from R datasets
library(xts)

data(sunspots)
class(sunspots)

head(sunspots)

# structuring data as xts
sunspots_xts <- as.xts(sunspots)
class(sunspots_xts)

head(sunspots_xts)

# Convert sunspots to xts using as.xts(). Save this as sunspots_xts
sunspots_xts <- as.xts(sunspots)

# Get the temporary file name
tmp <- tempfile(pattern = "sunspots_xts", fileext = "")

# Write the xts object using zoo to tmp 
write.zoo(sunspots_xts, sep = ",", file = "test")

# Read the tmp file. FUN = as.yearmon converts strings such as Jan 1749 into a proper time class
sun <- read.zoo("test", sep = ",", FUN = as.yearmon)

# Convert sun into xts. Save this as sun_xts
sun_xts <- as.xts(sun)

# Time zone
Sys.timezone()
# indexClass
indexClass(sunspots_xts)
#indexTZ
indexTZ(sunspots_xts)
tzone(sunspots_xts)

nminutes(sunspots_xts)
indexFormat(sunspots_xts)