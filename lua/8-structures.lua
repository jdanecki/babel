#!/bin/lua
car={}
brand=1
year=2

function show(s)
    print("brand:", s["brand"], s[brand])
    print("year of production:", s["year"], s[year])
end

car["brand"]="volvo v40"
car["year"]=2010

car[brand]="volvo v40"
car[year]=2010
    
show(car)
