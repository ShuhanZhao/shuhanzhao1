my$chromStart=100;
my$chromEnd=10000;

($chromStart, $chromEnd) = ($chromEnd, $chromStart);
print$chromStart,"\t"; print$chromEnd,"\t";

#数组（array）的命名是以@开头（@rray）

@position = (1..1e3); 
print $position[0],"\n";

@position = (1..110); 
print $position[0],"\n";

#见PPT push pop 从最后加减 shift从开始减少， unshift 从第一个加
my @codes = ( "AUG", "UGA", "UAA" );
print "codes ", "@codes", "\n";
shift @codes, "AAA";
#splice ARRAY, OFFSET从哪儿开始切, LENGTH切几个, LIST 再切掉的地方插入什么

@codes2 = ("UAG", "1000"); 
unshift @codes2, "UAA"; 
print "codes2", "@codes2", "\n";

@codes3 = ("UAG", "1000"); 
shift @codes3, "UAA"; 
print "codes3", "@codes3", "\n";

my @codes4 = ( "AUG", "UGA", "UAA" );shift @codes4, "AAA";
print "codes4 ", "@codes4", "\n";

#Rfor=perl foreach


#for (初始化; 测试；递增/递减)
for ($i = 1; $i <= 10; $i++)
 { # count from 1 to 10      
  print "I can count to 
  $i!\n"; 
}

#for记得分行写 不然会出错

#Perl最常用的默认变量：$_,  当未告知用哪个变量或数值，Perl都会直接使用$_ 

#reverse 返回不改变

@codes = ( "AUG", "UGA", "UAA" );
my @revCodes = reverse(@codes); 
print "reversed codes: ", "@revCodes", "\n"; 
print "codesya: ", "@codes", "\n"; 
my @sortedCodes = sort(@codes); 
print "sorted codes: "," @sortedCodes", "\n"; 
#sort区分大小写  小写在大写后面 字母按字母顺序 排序规则是看ASCII大小 
#sort要按顺序排的话 比较操作符$a<=>$b 升序 $b<=>$a 降序

my @numbers    = ( 90 .. 111 );
 my @sortedNums = sort{$a<=>$b} @numbers; 
 print "sorted numbers: ", "@sortedNums", "\n"; 

print "@codes\n"; 
#对比
my $s = @codes; 
print $s, "\n";
#scalar 标量大小


