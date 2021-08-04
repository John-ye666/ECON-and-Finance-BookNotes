library(data.table)
library(tidyverse)

download.file('http://economics.mit.edu/files/397','asciiqob.zip')
unzip('asciiqob.zip')# Unzip file through the order 'unzip' directly.
#Read the data to a dataframe
pums <- read.table('asciiqob.txt',header = FALSE,stringsAsFactors = FALSE)
head(pums)
#Name the columns of pums
names(pums) <- c('lwklywge','educ','yob','qob','pob')
head(pums)

#Make OLS Regression using 'lm' method. 
reg.model <- lm(lwklywge~educ,data=pums)

#Convert our original to data.table like pd.table in pandas in python. 
pums.data.table <- data.table(pums)
#form a new data frame, resorting by educ, with the method of mean of #lwklywge
educ.means <- pums.data.table[,list(mean=mean(lwklywge)),by=educ]
educ.means
#Form a column 
educ.means$yhat <- predict(reg.model,educ.means)
educ.means
p <- ggplot(educ.means,aes(x=educ))+
  geom_point(aes(y=mean))+
  geom_line(aes(y=mean))+
  geom_line(aes(y=yhat))+
  xlab('Years of completed education')+
  ylab('Log weekly earnings,$2003')
p
ggsave(filename = 'Fig3.1.2.pdf')
