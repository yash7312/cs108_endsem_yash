#!/bin/bash
# Recursive function to calculate catalan number at a particular index.
calculate_catalan() {
    local n=$1          # Storing the argument in variable n
    if [ $n -eq 0 ] || [ $n -eq 1 ]; then           # Checking for base case
        echo 1                                      # C_0 = 1 and C_1 = 1
        return                                      # exit the function
    fi

    local result=0                                  # local variable result in which we will store intermediate and final recursion call values.

    # Calculate Catalan number using the recursive formula
    for ((i = 0; i < n; i++)); do
        result=$((result + $(calculate_catalan $i) * $(calculate_catalan $((n - i - 1)))))
    done

    echo $result                                    # Return the final result.
}

# Check if a command line argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 {integer}"
    exit 1
fi

# Get the integer from the command line argument
input_integer=$1

# Check if the input is a non-negative integer
if ! [[ $input_integer =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a non-negative integer as the command line argument."
    exit 1
fi

# Call the function with the input integer
result=$(calculate_catalan $input_integer)

echo "$result"              # Print the result on terminal
