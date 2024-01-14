#!/bin/lua

rozmiar=10
rozmiar_x=2
rozmiar_y=5


tablica={}
kartka={}

for i=0, rozmiar
do	
   tablica[i] = 100+i
   print("tablica[" .. i .. "]=", tablica[i])
end

for y=0, rozmiar_y
do
	kartka[y]={}
	for x=0, rozmiar_x
	do
		kartka[y][x] = 10*y+x
		print("kartka[" .. y .. "][" .. x .. "] = ", kartka[y][x])
	end
end

tab={1, 2, 3}
print("tab[0]=", tab[0])
print("tab[1]=", tab[1])


