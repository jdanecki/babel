#!/bin/bash

if [ -z $1 ] 
then
    echo "missing language argument"
    exit 1
fi

if [ -z $2 ] 
then
    echo "missing file extension"
    exit 1
fi

if [ ! -d $1 ]; then mkdir $1; fi

for f in c/*.c
do
    cp $f $1/`basename $f .c`.$2
done
