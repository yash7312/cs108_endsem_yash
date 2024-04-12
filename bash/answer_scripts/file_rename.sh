#!/bin/bash

# Create output directory (mkdir = make directory)
mkdir output

# Today's date (see how the date is stored in yyyymmdd)
today_date="20081126"

# Function to extract day, month, and year from the file name
# See how we have used negative indices. Suppose a file name is "sakshamrathi14012005.jpg" then g will stored at -1 index, p at -2 and so on. The second argument in the extraction is for length.
# So -12: 2 means substring starting at -12 and of length 2.
extract_date() {
    file_name="$1"
    day="${file_name: -12:2}"
    month="${file_name: -10:2}"
    year="${file_name: -8:4}"
}


# Loop through files in the current directory
# *.jpg files means all the files of .jpg extension
for file in *.jpg; do
    if [ -f "$file" ]; then         # Check if this is a file and not a directory (Not necessary for simple testcases)
        # Extract date from the file name
        extract_date "$file"            # $1 will contain the file name and is passed as argument
        # Check if the date is valid (whether it contains numbers and whether the length of day/month/year are correct)
        # =~ matches strings/regex in bash. ^ denotes beginning. [0-9] is a character class of single digits. {2} denotes 2 occurrences. $ denotes end of the line. which means the following pattern is present at both start and end.
        if [[ "$day" =~ ^[0-9]{2}$ && "$month" =~ ^[0-9]{2}$ && "$year" =~ ^[0-9]{4}$ ]]; then
            # in a large script, it is a good practice to use echo statements to debug.
            # echo "HELLO"  
            # Calculate the date difference. See the day is kept at the end. 10# means decimal notation.
            date_diff=$(( (10#$today_date) - (10#$year$month$day) ))
            # Rename the file based on date difference
            if [ $date_diff -eq 0 ]; then
                cp "$file" "output/${file%.jpg}_today.jpg"          # cp = copy file
            elif [ $date_diff -ge 1 -a $date_diff -le 7 ]; then
                cp "$file" "output/${file%.jpg}_weekold.jpg"
            elif [ $date_diff -ge 8 ]; then
                cp "$file" "output/${file%.jpg}_quiteold.jpg"
            elif [ $date_diff -le -1 ]; then
                cp "$file" "output/${file}"
                rm "output/${file}"
            fi
        fi
    fi
done