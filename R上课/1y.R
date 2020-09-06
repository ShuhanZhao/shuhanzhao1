install.packages("survival")
library("survival")
data("lung")
head(lung)
s <-Surv(lung$time, lung$status) 
sfit<-survfit(s~1)
plot£¨sfit£©
fit <-survfit(Surv(time,status)~sex,data =lung)
print(fit)