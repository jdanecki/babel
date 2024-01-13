
iloczyn()
{
	wynik=$(($1 && $2))
	echo "iloczyn $1 && $2 = $wynik"
}

suma()
{
	wynik=$(($1 || $2))
	echo "suma $1 && $2 = $wynik"
}

suma_xor()
{
	wynik=$(($1 ^ $2))
	echo "suma_xor $1 ^ $2 = $wynik"
}


zero=0
jeden=1

iloczyn $zero   $zero  
iloczyn $zero   $jeden  
iloczyn $jeden  $zero  
iloczyn $jeden  $jeden  

suma $zero   $zero  
suma $zero   $jeden  
suma $jeden  $zero  
suma $jeden  $jeden  

suma_xor $zero   $zero  
suma_xor $zero   $jeden  
suma_xor $jeden  $zero  
suma_xor $jeden  $jeden  

neg=$((!$zero))
echo "negacja ! $zero = $neg"
echo "negacja ! $jeden = $((! $jeden))"

