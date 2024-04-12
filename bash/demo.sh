#!/bin/bash

# Accept array as arguments
arr=("$@")
len=${#arr[@]}
itr=0

# Bubble sort algorithm
for (( i=0; i<len-1; i++ )); do
    for (( j=0; j<len-i-1; j++ )); do
        if [ ${arr[j+1]} -lt ${arr[j]} ]; then
            # Swap elements if they are in the wrong order
            temp=${arr[j+1]}
            arr[j+1]=${arr[j]}
            arr[j]=$temp
            let itr++
        fi
    done
done

# Print the sorted array
for (( k=0; k<len; k++ )); do
    echo -n ${arr[$k]} " "
done

# Print the number of iterations
echo $itr