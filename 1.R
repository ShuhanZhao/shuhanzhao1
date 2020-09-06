install.packages("ggplot2")
library("ggplot2")
install.packages("survival")
library("survival")
data("lung")
head(lung)
s <-Surv(lung$time, lung$status) 
sfit<-survfit(c(s~1))
sfit

fit <-survfit(Surv(time,status)~sex,data =lung)
print(fit)
plot(fit)

install.packages("survminer")
library("survminer")
ggsurvplot(fit)

library(survival)
res.cox<-coxph(Surv(time,status)~ph.ecog,data = lung)
res.cox

surv_diff <- survdiff(Surv(time, status) ~ ph.ecog, data = lung)
surv_diff
res <- pairwise_survdiff(Surv(time, status) ~ph.ecog, data = lung )
res
#Log-Rank test的P值0.001也可得出ph.ecog组有显著差异

#广州年气温
#数据来源 广州气象台 2019/12/28

#1月份的第一天是星期三，一年中的第n天(如第三十二天)是星期几?
n=
day<-1:n
date<-ts(day,start = c(1,3),frequency = 7)
end(date)

n=32
#取end 结果的第二个数值

chip1<-read.table("D:chipplot.txt",head=TRUE)
library("ggplot2")
p<-ggplot(chip1, aes(x=GSM816038, y=GSM816040)) +

  geom_point(size=1,shape=21,col="blue",bg="blue")+
	  geom_point(aes(12,10), col="red", size=3)+
	  geom_point(alpha = .5)+
  guides()

chip_bar<-c(t(chip1[93,2:6]))
chip_bar1<-as.numeric(chip_bar)
chip_bar1
barplot(chip_bar1,col="yellow",xlab = "has-mir-21",ylab = "expression",main=" has-mir-21 expression ")

cheng<-data.frame(table(chip1$GSM816038,chip1$GSM816040,chip1$GSM816041,chip1$GSM816042))

boxplot(cheng,col=c("yellow","red","steelblue","mediumturquoise"),xlab=chip1$GSM816038,chip1$GSM816040,chip1$GSM816041,chip1$GSM816042 , ylab="mRNA",las=1, font.lab=2)
turn_mult_times<-function() 
{
  wheel<-2:5
  workfir<-sample(wheel, size =2, replace =TRUE, prob =c(0.3, 0.1, 0.2, 0.4)) 
  sum(workfir)
}
x<-replicate(1000,turn_mult_times())
hist(x)

