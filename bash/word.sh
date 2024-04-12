#!/bin/bash
declare -a name
declare -a freq
IFS=$' '  # Set Internal Field Separator to newline

temp=0
x=0
for line in $(cat word_input.txt); do
    for check in $(cat word_input.txt); do
        if [ $line == $check ];
        then
            let temp++
        fi
    done
    temp=0
    name[$x]=$line
    freq[$x]=$temp
    
    let x++
done

j=0
temp1=0
while [ $j -lt $x ];
do
    k=0
    while [ $k -lt $x ];
    do
        if [ "${name[$k]}" = "${name[$j]}" ];
        then
            let temp1++
        fi
        let k++
    done
    if [ $temp1 -eq 1 ];
    then
        echo ${name[$j]}
    fi
    temp1=0
    let j++
done
