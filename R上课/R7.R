barplot(VADeaths[,1], col=c("#999999", "#E69F00", "#56B4E9", "#E69FFF", "#FF00E9"), border = "steelblue",main="Death Rates in Virginia", xlab="Age", ylab="Death Rate")
#R是分不同的图层 
?title
#使用par()函数, par()函数被称为“永久修改” 可以定义图形的参数，除非打开一个新的RStudio

# 画第一条线
x<-1:9;
y1=x*x;
y2=2*y1 ;
plot(x, y1, type="b", pch=19, col="red", xlab="x", ylab="y")
# 增加一条线
lines(x, y2, pch=21, col="blue", type="b", lty=2)
#增加图例

legend(1, 70, legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8)

legend("bottomright",legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8)

#text(x, y, labels) x and y : 文本的坐标 labels：一个字符向量：包含添加的文本
plot(iris$Sepal.Length[1:10], iris$Petal.Length[1:10], pch=19, col="blue")
text(iris$Sepal.Length[1:10], iris$Petal.Length[1:10],
     row.names(iris[1:10,]), cex=0.65, pos=1,col="red")

head(iris)

?text

plot(iris$Sepal.Length, iris$Petal.Length, pch=19)
# Add vertical line 垂直线
abline(v=6, col="blue")
#pl Add horizontal line水平线, change line color, size and type
abline(h=5, col="red", lty=2, lwd=3)
#Add regression line 线性回归
reg<-lm(iris$Petal.Length~iris$Sepal.Length, data = iris)
abline(reg, col="green", lty=2, lwd=3)

abline(v=median(iris$Petal.Length),col="blue")
#中值
abline(v=mean(iris$Petal.Length),col="yellow")
#均值

#Xlim和ylim 参数去限定x轴和y轴的范围 格式Format : xlim = c(min, max); ylim = c(min, max). log 参数进行log转换: log=“x”, log=“y” or log=“xy”.
x<-1:9;
y=x*x
plot(x, y, pch=19, col="red", type="b")
plot(x, y, pch=19, col="red", type="b", xlim=c(1,15), ylim=c(1,150))
plot(x, y, pch=19, col="red", type="b", log="y")

#axis(side, at=NULL, labels=TRUE) side : 坐标放置的位置，值可为： 1(below), 2(left), 3(above) and 4(right). at: the points at which tick-marks are to be drawn. labels: vector of texts for the labels of tick-marks.

x<-1:5;
y=x*x
plot(x, y, pch=19, col="red", type="b", frame=FALSE, xaxt="n")
axis(1, 1:5, LETTERS[1:5], col.axis="blue")
axis(3, col = "darkgreen", lty = 2, lwd = 0.5)
axis(4, col = "violet", col.axis = "dark violet", lwd = 2)

#如何对自己的数据进行作图分析 见PPT
#setwd 设置工作目录 R中必须用/而不是\
#read.table(file.choose(), header=T, sep="\t")可以弹出对话框，选择文件。

#例 生成各科成绩
#?round 四舍五入
#stu_num<-nrow(students) #nrow获取行数, 什么函数获取列数？nsol
#English<-sample(80:100,stu_num,replace=TRUE) # sample抽样
#Math<-round(runif(stu_num,min=80,max=100)) #runif生成均匀随机数
#Computer<-round(rnorm(stu_num,mean=90,sd=5)) #rnorm生成正态分布的随机数
#Computer[which(Computer>100)]<- 100 #超过100分的，设为100分。which函数的用法
#Student_score <- data.frame(students, English=English, Math=Math, Computer=Computer)
# 组合成新的数据框架write.table(Student_score,file=“Student_score.csv”) #输出结果到新的文件#sep="t/" #sep=","
