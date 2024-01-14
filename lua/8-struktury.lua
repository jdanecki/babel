#!/bin/lua

samochod={}
marka=1
rok=2

function pokaz(s)
	print("marka:", s["marka"], s[marka])
	print("rok produkcji:", s["rok"], s[rok])
end

samochod["marka"]="volvo v40"
samochod["rok"]=2010

samochod[marka]="volvo v40"
samochod[rok]=2010
	
pokaz(samochod)
