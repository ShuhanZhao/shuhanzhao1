#正则表达式(Regular Expression), 也叫模式（pattern）用来表示匹配或不匹配某个字符串的特征模板。
#模式匹配操作符：双斜线（“/  /”）表示模式 类似搜索引擎

$_="ATGCAGATGGTCATAA";
my $sta= "ATG";
my $sto="ACGY";
if(/$sta/)
{
	print "exist","\n";
}
else
{
   print "not exist","\n";
}

if(/$sta/||/$sto/)
{
	print $sta,"\n";
}
else
{
   print "not exist","\n";
}

#绑定操作符（=～）告诉Perl，拿右边的模式/  /来匹配左边的字符串绑定操作符
#注意：默认情况下模式匹配的操作对象是$_

if($_=~/$sta/
	||$_=~/$sto/)
{
	print "yes","\n";
}
else
{
   print "not exist","\n";
}


#元字符点号（.）指的是.'position 匹配 !任何一个字符! 的位置

my $Hbox= "DDDDDDACACCAYDYDYDYD";#motif ANANNA 
if($Hbox=~/A.A..A/)
{
	print $Hbox,"\n";
}
else
{
	print "no","\n";
}


#*daibiao中间隔任意多个位置，可匹配一个或任意多个
$_ = "AAGAGCCTCCTAAAAAAAATBBBBBBBBYYYYYGTTCTGGATGGGAGCSSSSSSAAAATCGTTCATGTGATGACGCAAAAAAAAACCCCCCCCCCCCCAAAAAAAAAACCCCCCCCCCAAACCCCCCCGGGGGGGGGGGAAAAAC";
my $startStopCode  =  "ATG.*TGA";
if ($seq=~/$startStopCode/) 
{
	print "find the start and stop code in the sequence $_ \n";
}
else
{
	print "no","\n";
}
#+间隔至少一次
$_ = "AAGAGCCTCCTAAAAAAAATBBBBBBBBYYYYYGTTCTGGGGAGCSSSSSSAAAATCGTTCATGTGAAATGATGACGC";
my $startStopCode  =  "ATG.+TGA";
if ($seq=~/$startStopCode/) 
{
	print "find the start and stop code in the sequence $_ \n";
}
else
{
	print "no","\n";
}

#我们常常需要在某个模式可有可无，而问号（？）匹配前面的模式0次或1次

#模式分组：在正则表达式中，圆括号（）是对字符串分组。
$_ = "ATGCGGCGGCGGCGGCGGCGGCGGTGA";
my $repeatMotif = "CGG";#"(CGG)+" not CGG+
if (/($repeatMotif)+/)#
{
	print "this is a mutant FMR1 gene.\n";
}

##字符集（character class）
#[a-zA-Z] : 匹配52个大小写字母的任何一个[0-9]: 匹配0-9里的任何一个数字[\d+]: 任意一个数字字符集的简写\s: 匹配任意空白符的简写。换页符（\f）,换行符（\n）,水平制表符（\t）,回车符（\r）和空白本身\w:匹配任意单个字符的简写。等价[a-z0-9A-Z_]
#反义和反义简写：在字符集开始加上脱字符（^）表示这些字符除外。如：[^def]，匹配def除外的任何字符。[^\d],匹配非数字字符[^\w],匹配非单词字符[^\s],匹配非空白字符字符集的大写版本表示否定意义：[\D] 等价于[^\d][\W] 等价于[^\w][\S] 等价于[^\s]指的是可能出现的字符，写在方括号[]内，它只匹配单个字符，但可以是字符集列出的任何一个。
#use ru xia 更准确
$_ = "020--84112517";
my $gzCode = "020-?";
if (/$gzCode\d+/)
{
	print "this is a telephone number in Guangzhou.\n";
}
else
{
	print "no","\n";
}


##模式匹配修饰符（modifier）
#i实现大小写无关的模式匹配


#第二个：s匹配任意字符（Matching Any Character）注意：默认情况下点号（.）无法匹配换行符my 
#x 
my $Hbox= "DDDDDDaCACCAYDYDYD\nYD";#motif ANANNA 
if($Hbox=~/A.A..a/isx)
{
	print $Hbox,"\n";
}
else
{
	print "no","\n";
}

#锚位（Anchors）让模式在字符串指定的位置匹配。(1)表示字符串开始的锚位是脱字符（^）(2)表示字符串结尾的锚位是$
my $tRNA = "GGGGGUGUAGCUCAGUGGUAGAGCGCGUGCUUAGCAUGCACGAGGCCCCGGGUUCAAUCCCCGGCACCUCCA";
my $CCAmotif = "CCA";
if ($tRNA =~ /$CCAmotif$/) 
{
	print "find the CCA tail, this is a tRNA sequence\n";
}
else
{
	print "no","\n";
}

$seq = "ATGAGCCTCCTAAAAAAAATBBBBBBBBYYYYYGTTCTGGATGGGAGCSSSSSSAAAATCGTTCATGTGATGAC";
my $startStopCode  =  "((ATG.)+TGA)";
if ($seq=~/$startStopCode/) 
{
	print "$1", "\t",$2,"\n";
}
else
{
	print "no","\n";
}

$seqll="CGGCGGCGGCCC";
if($seqll =~/((CGG){2})/)
{
	print "$1", "\n";
}
else
{
	print "no","\n";
}


#用s///进行替换（Substitutions）s///的功能是：查找并替换把DNA转换成RNA，或RNA转换成DNA
my $snoRNA = "AGTTTGCCATGATGAAATGCATGTTAAGTCCGTGTTTCAGCTGATCAGCCTGATTAAACACATGCTCTGAGCAGACT";
$snoRNA =~ s/T/U/;
print $snoRNA, "\n";

my @fields = split /:/, "abc:def:g:h"; 
my @args = split /\s+/,"abc def e "; 

print join(":",@fields),"\n";

#找位置 index  
#class end :D