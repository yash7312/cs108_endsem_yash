#!/bin/bash
#Author: Saksham Rathi
# Takes a file path as command line argument, and then reads 3 numbers and calculates their mean and variance.

# Check if a file path is provided as a command line argument. $# is the number of command line arguments
if [ "$#" -ne 2 ]; then         # See the syntax of if statement carefully. Conditions inside [] and -ne stands for not equal to.
    echo "Usage: $0 <number of elements> <file_path>"        
    exit 1                      # Stops the execution of the code
fi                              # If statement exits

# Check if the file exists or not
n=$1
file_path=$2                    # First command line argument as $1
if [ ! -e "$file_path" ]; then          # ! = not, -e for file existence, the spaces around [ ] are necessary
    echo "Error: File $file_path not found."
    exit 1
fi

# Read the numbers from the file
read num < "$file_path"
sum=0
for i in $num
do
    sum=$(($sum + $i))
done
echo "$sum"
avg=$(($sum/n))
echo $avg

variance=0
for i in $num
do
    variance=$(($variance + ($i-$avg)**2))
done
variance=$(($variance/3))
echo "$variance"
# # Calculate the sum. $(()) for arithmetic calculation
# sum=$((num1 + num2 + num3))

# # Calculate the average
# average=$((sum / 3))

# # Calculate the variance
# variance=$(( ( (num1 - average)**2 + (num2 - average)**2 + (num3 - average)**2 ) / 3 ))

# # Display the result
# echo "The average of $num1, $num2, and $num3 is: $average"
# echo "The variance of $num1, $num2, and $num3 is: $variance"

# Additional Exercise: The current code takes only three numbers, take n numbers, where n is another command line argument.
# Also, modify the code to support floating point calculations.

# Thanks for reading! ~ Saksham Rathi