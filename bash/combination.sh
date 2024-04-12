#!/bin/bash

fact(){
    local n=$1
    local temp=1
    local i=1
    while [ $i -le $n ]
    do
        temp=$(($temp*$i))
        let "i++"
    done

    echo $temp
}

C(){
    local n=$1
    local i=$2
    local temp=0
    local temp1=$(fact $n)
    local temp3=$(fact $(($n-$i)))
    local temp2=$(fact $i)
    temp=$(($temp1/$temp2))
    temp=$(($temp/$temp3))
    echo $temp

}


C $1 $2