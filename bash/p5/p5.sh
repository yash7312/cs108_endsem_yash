#!/bin/bash

# mkdir output

for i in $(ls);
do
    x=0
    for j in $i;
    do
        let x++
    done
    # echo $x
    x=$((x-1))
    x=$((x-12))
    date=${i:$x:8}
    x=$((x+8))
    type=${i:$x:4}
    x=$((x+4-12))
    # echo $x
    name=${i:0:$x}
    
    if [ "$type" = ".jpg" ];
    then
        echo $i
        date_int=$((date))
        if [ $date_int -ge 19112008 ] && [ $date_int -le 25112008 ];
        then
            echo "${name}${date_int}_weekold.jpg"
        elif [ $date_int -le 19112008 ];
        then
            echo "${name}${date_int}_quiteold.jpg"
        elif [ $date_int -eq 26112008 ];
        then
            echo "${name}${date_int}_today.jpg"
        else
            echo "${name}${date_int}_delete.jpg"
        fi
    fi
done