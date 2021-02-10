## IMPORT DATA ##
unix<-read.csv("UNIX.csv")
argus<-read.csv("ARGUS.csv")

## LINEAR REGRESSION ##
unixLM<-lm(unix$Time~unix$Data.Bytes)
argusLM<-lm(argus$Time~argus$Data.Bytes)

## Question 1 ##
coef(unixLM)
coef(argusLM)

## Question 2 ##
plot(unix, main="UNIX")
abline(unixLM)
plot(argus, main="ARGUS")
abline(argusLM)

## Question 4 ##
summary(unixLM)
summary(argusLM)

## Question 5 ##
summary(unixLM)$r.squared
summary(argusLM)$r.squared

## Question 6 ##
plot(unixLM)
plot(argusLM)
plot(cooks.distance(unixLM))
plot(cooks.distance(argusLM))


