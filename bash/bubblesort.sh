#!/bin/bash

arr=("$@")
len=("$#")
itr=0


for (( i=0; i<len-1; i++ ));
do
    for (( j=0; j<len-1; j++ ));
    do
        if [ ${arr[j+1]} -lt ${arr[$j]} ];
        then
            temp=${arr[j+1]}
            arr[j+1]=${arr[j]}
            arr[j]=$temp
            let itr++
        fi
        
    done
    
done

k=0
while [ $k -lt $len ];
do
    echo -n ${arr[$k]} " "
    let k++
done

echo $itr