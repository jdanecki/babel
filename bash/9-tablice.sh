rozmiar=10
rozmiar_x=2
rozmiar_y=5


declare -A tablica
declare -A kartka

tablica[0]=10;
tablica[1]=20;

echo "\$tablica[0]=${tablica[0]}"
echo "\$tablica[1]=${tablica[1]}"

for ((i=0; i< rozmiar; i++))
do
#	echo "i=$i"
	tablica[$i]=$((100+i))
 	echo "tablica[$i]=${tablica[$i]}"
done

for ((y=0; y < rozmiar_y; y++))
do
	for ((x=0; x < rozmiar_x; x++))
	do
		kartka[$y,$x]=$((10*y+x))
		echo "kartka[$y,$x]=${kartka[$y,$x]}"
	done
done

