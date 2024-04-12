#!/bin/bash

# The number of arguments should be > 0
# "$#" stores the number of command line arguments
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <array>"
    exit 1
fi

# "$@" stores all the command line arguments
arr=("$@")

# length is calculated using # and @ means all, so we are calculating the size of the array. Can also be done by using len = "$#"
len=${#arr[@]}

# The number of swaps
swaps=0

# For loops. (()) stores arithmetic operations, initialization done using i = 0 
for ((i = 0; i < len-1; i++)); do
    for ((j = 0; j < len-i-1; j++)); do
        # Comparison of consecutive elements. ${} is used to get the corresponding values. -gt stands for >
        if [ ${arr[j]} -gt ${arr[j+1]} ]; then
            # Swap elements using temporary variable temp
            temp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$temp
            # Since, we swap, we increase the count by 1.
            ((swaps++))
        fi      # to end if
    done        # to end inner for loop
done            # for outer for loop

# Print the sorted array and the number of swap operations
echo "${arr[@]}"
echo "$swaps"
