#!/bin/bash

arr=("$@")
temp=0
for (( i=1; i<$#; i++ ));
do
    if [ ${arr[0]} -eq ${arr[i]} ];
    then
        temp=1
    fi
done

if [ $temp -eq 1 ];
then
    echo "YES"
else
    echo "NO"
fi