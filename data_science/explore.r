library(ggplot2)
library(reshape2)

names(data) <- c('state', 'yes', 'no')
meltedData <- melt(data, id.vars = 'state')

yes <- as.numeric(as.character(data$yes))
no <- as.numeric(as.character(data$no))

mean(yes)
mean(no)

sd(yes)
sd(no)

ggplot(data, aes(x = state, y = yes)) + 
  geom_bar(stat = "identity") + coord_flip()

# ggplot(meltedData, aes(x = state, y = value)) + 
#  geom_bar(stat = "identity")