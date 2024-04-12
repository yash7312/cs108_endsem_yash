#!/bin/bash

catalan(){
    local n=$1

    if [ $n -eq 1 ] || [ $n -eq 0 ]
    then
        echo 1
    else
        local i=0
        local temp=0
        local temp1=0
        local temp2=0
        while [ $i -lt $n ]
        do
            temp1=$(catalan $i)
            temp2=$(catalan $(($n-$i-1)))
            temp=$(($temp + $temp1 * $temp2))
            let "i++"
        done
        echo $temp
    fi
}

read -p "enter the value of n: " x

result=$(catalan $x)
echo "C($x) = $result"