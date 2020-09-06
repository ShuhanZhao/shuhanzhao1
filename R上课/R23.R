1+1
4-6
6/2-1
433*3
((1+2-3))/4
a=1
b<-2
3->c 
#d<-4
#命名不要以数字开头，注意大小写，不能含特殊字符，
#命名不要重复
#ls()
#rm(list=ls())
#_zhao_<-3 下划线不能在前
#单等号赋值，双等号判断
.z<-3
?ls
DNA<-c("A","T","C","G")
sample(x=DNA,size=1)
#args 参数解析
#c combine
#size次数 replace 有放回抽样，系统默认无放回抽样
sample(x=DNA,size=2,replace=TRUE)
#构建函数：命名 参数 括号
turn<-function(){
  DNA<-c("A","T","C","G")
  dinucleotide<-sample(x=DNA,size=2,replace=TRUE)
  dinucleotide
}

turn()

#默认参数：不给的话从中选，给的话从给的里面选

#要先运行上面的turn，再运行turn()

turn<-function(wheel){
  DNA<-c("A","T","C","G")
  dinucleotide<-sample(x=DNA,size=2,replace=TRUE)
  dinucleotide
}

turn3<-function(wheel=c("A","T","C","G"),n=2){
  dinucleotide<-sample(x=wheel,size=2,replace=TRUE)
  dinucleotide
}

turn2<-function(wheel=c("A","T","C","G")){
  dinucleotide<-sample(x=wheel,size=2,replace=TRUE)
  dinucleotide
}

turn2()

turn3()
turn3(wheel=1:4)

turn4<-function(wheel=1:4,n=2){
  dinucleotide<-sample(x=wheel,size=2,replace=TRUE)
  sum(dinucleotide)
}

turn4()

#replicate()

replicate(1000,turn4())

x<-replicate(1000,turn4())
hist(x)

colors()

#sample 的概率功能
turn5<-function(wheel=1:4,n=2){
  dinucleotide<-sample(x=wheel,size=2,replace=TRUE,prob=c(0.1,0.2,0.3,0.4))
  sum(dinucleotide)
}
turn(5)

replicate(1000,turn(5))
#原子向量  可用typeof 来查是哪种类型，
#数值型，字符型,整形，逻辑性，复杂型，粗糙性
#数值型 字符型混合在一起，会判断为字符型
NUM<-c(1,2,3,4)
typeof(NUM)
NUM2<-c(1L,2L,3L,4L)
typeof(NUM2)

AGS<-c("V","1","2L")
typeof(AGS)

#NUM 把原子数据改成矩阵
NUM3<-1:20
dim(NUM3)<-c(2,2,5)
NUM3
#改变排列顺序 
m<-matrix(data=NUM3,nrow=10,ncol=2)
m

#array 数组 三维
array(data=NUM3,dim=c(2,2,5))
#向下取整
array(data=NUM3,dim=c(0.5,4,5))
array(data=NUM3,dim=c(4,5))

#list 列表 可以是元素本身
acid1<-list("ala",11,FALSE)
typeof(acid1)
str(acid1)

acid2<-list(1L,11,"ala",TRUE)
str(acid2)
#fata.frame
ASA<-c("l","m","n")
number<-c(1,2,3)
Values<-c(TRUE,TRUE,TRUE)

df<-data.frame(kk=number,kkk=Values,kkkk=ASA)
View(df)
head(df,1)
tail(df,2)
#write 相对路径，全路径（任意存）
#read 也可读文件 
df[1,2]
df[1,c(2,3)]
#不想要哪个元素就加“-”负号
#前面的数字是行，后面是列


df1$Hydrophilic
#$

#sort 排序 order 展示行
sort(df$Hydrophilic)
df1[1,]

order(df1$Number.in..hemoglobin)
df1[order(df1$Number.in..hemoglobin),]

#%in% 逻辑判断 在不在集合里
vec<-c(1,2,3)
vec[c(TRUE,TRUE,FALSE)]

1%in%c(1,2,3)

x<-c(5,15)
x>10&x<20     

#all 全部TRUE为TRUE，否则为FALSE

z<-c(1,2,3)
all(z%in%c(1,2,3,4,5,6))



df1[df1==FALSE,]
df1[df1$Number.in..hemoglobin==4,]
#next 跳出当前循环 break 跳出所有循环
v<-LETTERS[1:6];
for()

  
 for(i in 1:10) 
 {
if(!i%%2) {next}  
 print(i)  
 }  
   
#! 取反 %%看是否有余数
#循环看方向 完整的loop


