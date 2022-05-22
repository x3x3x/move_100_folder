$c = 100				# 每个文件夹包含多少文件夹

$d = (Get-ChildItem -Directory)		# 所有子目录

$n = $d.count				# 当前目录共有多少个子目录

$m = [int][Math]::Ceiling( $n / $c )	# 需要新建多少文件夹，Ceiling除法结果取大


for( $i=1; $i -le $m; $i++ )
{
	$ddd = "zuxv" + "$($i + 10000000)"	# "zuxv" + ($i + 10000000)
	mkdir $ddd
}


for( $i=1; $i -le $n; $i++ )
{
	$j = 10000000 + [int][Math]::Ceiling( $i / $c )
	Move-Item $d[$i-1] ( "zuxv" + $j )
}




