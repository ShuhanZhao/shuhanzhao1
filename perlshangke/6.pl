#数组格式
my @a = (
	[1, 3, 5, 7],
	[9, 11, 13, 15],
	[17, 19, 21, 23]
	);
#数组调用
for (my $i=0; $i<3; $i++)
{   
	#打印行
	for (my $j=0; $j<4; $j++)
	{
		print $a[$i][$j], "\t";
	}
		print "\n";

}
#输入for 跳出的for...loop 很好操作 有格式且一起改动


my @b = (
	[1, 3, 5, 7],
	[9, 11, 13, 1],
	[17, 19, 21, 2]
	);
#数组调用
for (my $i=0; $i<3; $i++)
{   
	#打印行
	for (my $j=0; $j<4; $j++)
	{
		print $b[$i][$j], "\t";
	}
		print "\n";

}



#定义子程序：3个部分 1.sub（subroutine ）关键词 2.子程序名,注意命名规则 3.代码块，用花括号{}封闭起来
#如 sub lalala{}


sub returnRevSeq
 {
	my $dnaSeq = "ACGTATGATGAAACTGAGG";
	my $revSeq = reverse($dnaSeq);
	 print$revSeq,"\n";
}

#&子程序名（）调用
&returnRevSeq();


#返回要的值（return ）可方便在外打印
#子程序默认的返回值是最后的算式值 最好加上return

#传输进去  @_代表传输进去的 要在子程序后面括号（）加传输的列表表达式

#. <- +



my$seq=(12,62,25,521)
sub  maxn
{
my $max=shift@_;
foreach my $val (@_) {
	{
		if($val>$max)
		{
			$max=$val
		}
	}
}
return $max
}

my$succ = &maxn(@seq)
print"maxya", "max","\n"