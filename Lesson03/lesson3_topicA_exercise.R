#create factor variables
library(datasets)
library(ggplot2)

data("midwest")
str(midwest)

midwest$state <- as.factor(midwest$state)

library(dplyr)
data("band_instruments")
str(band_instruments)

band_instruments <- data.frame(apply(band_instruments, 2, as.factor))
str(band_instruments)

#####
levels(band_instruments$plays)

band_instruments$plays2 <- ifelse(band_instruments$plays == "bass", 1,
                                 ifelse(band_instruments$plays == "guitar", 2, band_instruments$plays))

levels(band_instruments$plays2)
str(band_instruments$plays2)
band_instruments$plays2=as.factor(band_instruments$plays2)
levels(band_instruments$plays2)

levels(midwest$state)

library(dplyr)
midwest$state2 <- recode(midwest$state,
                         "IL" = "Illinois",
                         "IN" = "Indiana",
                         "MI" = "Michigan",
                         "OH" = "Ohio",
                         "WI" = "Wisconsin")

str(midwest$state2)

########
#ordered factor

gas_price <- rep(c("low", "medium", "high"), times = 146)
gas_price <- gas_price[-1]

#create a new gas price variable
midwest$gas_price <- factor(gas_price, 
                            levels = c("low", "medium", "high"), 
                            ordered = TRUE)
str(midwest$gas_price)

table(midwest$gas_price)
