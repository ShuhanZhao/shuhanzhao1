turn_mult_times<-function() 
{
  wheel<-2:5
  workfir<-sample(wheel, size =2, replace =TRUE, prob =c(0.3, 0.1, 0.2, 0.4)) 
  sum(workfir)
}
x<-replicate(1000,turn_mult_times())
hist(x)



install.packages(schoolmath)
library("schoolmath")


is.prim(7)


prime <- function(x) {
  if (any(x %% 2:(x - 1) == 0))
    return("X is not a prime")
  "X is a prime"
}
prime3(7)


chip<-read.table("D:/chipplot.txt")
install.packages("car")  
library("car")  

chip1<-read.table("D:/chipplot.txt",head=TRUE)


install.packages("ggplot2")
library("ggplot2")

#绘制以样品GSM816041为x轴，GSM816042为y轴的散点图，点为蓝色实心原点，在坐标(12,10)处添加形状任意的红色点，添加必要的x轴，y轴，图例和标题名称；
#2.绘制has-miR-21在这5个样品的表达值柱形图，添加必要的x轴，y轴和标题名称，柱形需用lightyellow颜色表示；3.绘制样品GSM816038，GSM816040，GSM816041和GSM816042的箱线图，添加必要的x轴，y轴和标题名称箱线需用不同的颜色表示；
ggplot(chip2, aes(x=GSM816041, y=GSM816042)) + 
  geom_point(size=1,shape=19,col="blue")+
  geom_point(aes(12,10), col="red", size=3)+
  geom_point(alpha = .5) 
legend(8, 12, legend=c("point1", "point(12,10)"), col=c("red", "blue"), lty=1:2, cex=0.8) 
 
chip_bar<-c(t(chip1[93,2:6]))
chip_bar1<-as.numeric(chip_bar)
chip_bar1
barplot(chip_bar1,col="yellow",xlab = "V",ylab = "expression",main="has")

cheng<-data.frame(table(chip1$V2,chip1$V4,chip1$V5,chip1$V6))








