$c = 100				# ÿ���ļ��а��������ļ���

$d = (Get-ChildItem -Directory)		# ������Ŀ¼

$n = $d.count				# ��ǰĿ¼���ж��ٸ���Ŀ¼

$m = [int][Math]::Ceiling( $n / $c )	# ��Ҫ�½������ļ��У�Ceiling�������ȡ��


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




