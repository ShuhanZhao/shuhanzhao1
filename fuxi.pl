


my@array = (9, 10, 105, 160, 6, 8);
my $i=0;
sub minVal
{
	
my $min= $array[$i];
foreach my $a (@array)
 {
	if ($a<$min) 
	{
		$min=$a;
		print  $min, "\n";
	}
 
 }
 $i++;
}

&minVal(@array);


 my $gene="CCAUGGAGGGTTTAA";
 my $po1=index($gene,"GTT");
 
 print $po1,"\n";


@codes =("AUG", "UGA", "UAA", "UAG", 1000);

@removes = splice @codes, 1, 0; 
print @removes, "\n";