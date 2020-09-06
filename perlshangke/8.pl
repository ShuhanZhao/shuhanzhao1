#哈希 字典
#获取或赋值用：$hash{$some_key},使用花括号来表示 

my $code        = "UUU"; 
my %geneticCode = ();#或者 my %geneticCode
 $geneticCode{$code} = "Phe";
  $code               = "UUA";
   $geneticCode{$code} = "Leu"; 
 
#上述相当于 my %geneticCode = ("UUU"，"Phe"，"UUA"，"Leu")； 或者my %geneticCode = ("UUU"=>"Phe"，"UUA"=>"Leu")

my @codes = ( "UUU", "UUA" );
 foreach my $cd (@codes)
  {     
  	print "the $cd code for AA: ", $geneticCode{$cd}, "\n"; #或$geneticCode{“UUU”} #print $cd的用法
  } 


# ye ke yong stdin
my % scorehash= ();
 my $scorefile = "D:/score.txt";
 open (score, "<scorefile>");
#not end  



#哈希函数： keys,  索引values, 值 each，exists, delete 

my %geneticCode = ("UUU","Phe","UUA","Leu");
 my @key =keys %geneticCode;
print "@key","\n";

my %geneticCode = ("UUU","Phe","UUA","Leu");
my @val =values %geneticCode;
print "@val","\n";

while ( my ( $key, $val ) = each(%geneticCode) ) 
{    
 print "the key is ", $key, " and the value is ", $val, "\n"; 
} 



#  substr（变量, OFFSET, LEN, REPLACEMENT） 

my $seq = "UGGGAUGAGGUAGUAGGUUGUAUAGUUUUAGGGUCACACCCA";
 my $str1 = substr( $seq, 0, 5 ); 
 print "The str1 is ", $str1, "\n"; 
 my $codelen= 3;
 my $i=0;
 my $seqlen = length($seq);
 for ($i=0; $i<$seqlen-$codelen; $i += $codelen)
 {
 	my $str = substr($seq, $i,$codelen);
 	print $str, "\n";
 }

#find- replace 查找替换

#打印蛋白序列
my %codonTable = (
        "TTT" => 'F',
        "TTC" => 'F',
        "TTA" => 'L',
        "TTG" => 'L',
        "TCT" => 'S',
        "TCC" => 'S',
        "TCA" => 'S',
        "TCG" => 'S',
        "TAT" => 'Y',
        "TAC" => 'Y',
        "TAA" => '0',
        "TAG" => '0',
        "TGT" => 'C',
        "TGC" => 'C',
        "TGA" => '0',
        "TGG" => 'W',
        "CTT" => 'L',
        "CTC" => 'L',
        "CTA" => 'L',
        "CTG" => 'L',
        "CCT" => 'P',
        "CCC" => 'P',
        "CCA" => 'P',
        "CCG" => 'P',
        "CAT" => 'H',
        "CAC" => 'H',
        "CAA" => 'Q',
        "CAG" => 'Q',
        "CGT" => 'R',
        "CGC" => 'R',
        "CGA" => 'R',
        "CGG" => 'R',
        "ATT" => 'I',
        "ATC" => 'I',
        "ATA" => 'I',
        "ATG" => 'M',
        "ACT" => 'T',
        "ACC" => 'T',
        "ACA" => 'T',
        "ACG" => 'T',
        "AAT" => 'N',
        "AAC" => 'N',
        "AAA" => 'K',
        "AAG" => 'K',
        "AGT" => 'S',
        "AGC" => 'S',
        "AGA" => 'R',
        "AGG" => 'R',
        "GTT" => 'V',
        "GTC" => 'V',
        "GTA" => 'V',
        "GTG" => 'V',
        "GCT" => 'A',
        "GCC" => 'A',
        "GCA" => 'A',
        "GCG" => 'A',
        "GAT" => 'D',
        "GAC" => 'D',
        "GAA" => 'E',
        "GAG" => 'E',
        "GGT" => 'G',
        "GGC" => 'G',
        "GGA" => 'G',
        "GGG" => 'G',
    );

my $proteinseq = " ";
for ($i=0; $i<$seqlen-$codelen; $i += $codelen)
 {
 	my $str = substr($seq, $i,$codelen);
 	$proteinseq =  $codonTable{$str};
 	print $proteinseq, "\n";
 }

