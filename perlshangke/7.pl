#< 键盘中输入 perl
#要输n个文件 scalar(@...)!=n $0指的是程序名  die 退出 scalar获取数组的大小

my $number =101.155166;

printf("%20d",$number);

#printf

my$base="ACGT";
printf("%10.3f %s",123);

#%g  科学计数法 %d  十进制整数 %x 十六进制  %o八进制 根据需要截尾 %s  是针对字符串的，如%10s, %-15s %f 针对数字的，如%12.3f  (包括小数点，    并且小数点后面只有3位数) %c 针对单个字符的 

my$kexue=10101010000;
printf("%g %s",$kexue,$base);

#open GENE"gene.txt";  #打开名为GENE的文件句柄，指向gene.txt文件 #也指它会打开文件gene.txt,  #文件中的任何内容都能从GENE读到程序 
#open GENE "<gene.txt"; #打开名为GENE的文件句柄，指向gene.txt文件 #
#open OUTPUT ">output.txt"; #打开名为OUTPUT的文件句柄,输出到output.txt open LOG, „>>logfile.txt‟; #打开名为LOG的文件句柄,输出到logfile.txt的已有内容后面 

#文件句柄（filehandle）,等同于文件的指针
open GENE, "<D:/TCGA_breastCancer_miRNA.txt";
open OUTPUT , ">D:/TCGA1.txt";
# 加上内容 从第几往后在复制一遍 my$i=几
my $i = 210;
while (my $line= <GENE>) 
{
	chomp($line);
	print OUTPUT  "my line is",$line, "\n";
	$i++;
}
close(GENE);
 
 close(OUTPUT);

#可以把句柄当成变量传入 用sub 见照片

