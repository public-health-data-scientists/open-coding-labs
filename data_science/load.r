# These data are taken from: 
# ------------------------------------------
# Behavioral Risk Factor Surveillance System
# link - http://www.cdc.gov/brfss/
# ------------------------------------------
#
# Prevalence and Trends Data
# link - http://apps.nccd.cdc.gov/brfss/

library(XML)
url <- "http://apps.nccd.cdc.gov/brfss/list.asp?cat=EX&yr=2013&qkey=8041&state=All"
tables <- readHTMLTable(url)
names(tables) <- 1:length(tables)
data <- tables[[10]]
