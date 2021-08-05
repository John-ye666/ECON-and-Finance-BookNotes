#sandwich: robust standard errors
#lmtest: print tables with robust standard errors
library(sandwich)
library(zoo)
library(lmtest)
library(data.table)
pums <- read.table('asciiqob.txt',
                   header = FALSE,
                   stringsAsFactors = FALSE)
head(pums)
#head(pums) indicates we need to add column names.
names(pums) <- c('lwklywge', 'educ', 'yob', 'qob', 'pob')
head(pums)
# Yes, it works! Every column has its name.

## From here we produce panelA of figure 3.1.3
#Panel A: OLS Regression 
reg.model <- lm(lwklywge~educ,data=pums)
#now make heteroge standard errors from the package 'sandwich'
robust.reg.vcov <- vcovHC(reg.model,'HC1')#HC1 for lm objects
#print the results
print(summary(reg.model))
print(coeftest(reg.model,vcov = robust.reg.vcov))#coeftest from the package lmtest, using to test cofficients. More focus on the coefficients compared with print(summary(reg.model))


##PanelB: Weighted Regression
samples <- !is.na(predict(reg.model,data=pums))#forming many logical values
View(samples)
pums.data.table <- data.table(pums[samples,])#Form table with na values
View(pums.data.table)
#Aggregate
educ.means <- pums.data.table[,list(mean=mean(lwklywge),
                                    count=length(lwklywge)),
                              by=educ]
head(educ.means)
head(pums.data.table)
#estimate weighted ols
weight.reg.model <- lm(lwklywge~educ,
                       weights = pums.data.table$count,
                       data=pums.data.table)
summary(weight.reg.model)

#robust standard error wrt. weighted OLS
wgt.reg.model.vcov <- vcovHC(weight.reg.model,'HC1')
print(summary(weight.reg.model))
print(coeftest(weight.reg.model,vcov=wgt.reg.model.vcov))


##MY Question:There is no use of 'educ.means'. It's so weird!