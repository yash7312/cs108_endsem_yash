#!/bin/bash

# Check if the number of command-line arguments is less than 2
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <query_element> <array_elements>"
  exit 1
fi

# Extract the query element
query_element="$1"

# Extract the array elements into an array. See how we extract numbers starting from 2nd index. @ = all. :2 means start from 2.
array=("${@:2}")

# Flag to check if the query element is found
found=0

# Iterate through the array elements
for element in "${array[@]}"; do
  # Check if the current element matches the query element
  if [ "$element" == "$query_element" ]; then
    found=1
    break
  fi
done

# Output "YES" if found, else "NO"
if [ "$found" -eq 1 ]; then
  echo "YES"
else
  echo "NO"
fi
