#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# The first argument will be the filename, so we are storing it.
input_file="$1"

# Check if the input file exists, ! is logical NOT operator.
if [ ! -f "$input_file" ]; then
    echo "Error: Input file not found."
    exit 1
fi

# Process the input file and calculate word frequencies
declare -a words=()         # -a stands for declaring arrays.
declare -a frequencies=()

# See how we read a file
while read -ra line; do     # Reading it line by line
    for word in "${line[@]}"; do            # Iterating through all the words of a file.
        found=false                     
        for i in "${!words[@]}"; do         # ! denotes the indices of an array (See how a same character is used differently.)
            if [ "${words[$i]}" == "$word" ]; then      
                ((frequencies[$i]++))           # We have found, so we increase the frequency. See how arithmetic expressions are stored in (())
                found=true                      # Setting found to true
                break
            fi
        done
        if [ "$found" == false ]; then
            words+=("$word")                    # See how we are appending an element to an array
            frequencies+=("1")                  # Initializing frequency to 1
        fi
    done
done < "$input_file"                            # All this is being done for the input file

for i in "${!words[@]}"; do                     # Now for all the indices, we print in the specified format.
    echo "${words[$i]}: ${frequencies[$i]}"
done
