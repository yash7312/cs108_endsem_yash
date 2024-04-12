#!/bin/bash

if [ $# -ne 1 ] ;
then
    echo $#
    echo "invalid input, correct usage: ./$0 <file name>"
    exit 1
fi

if [ ! -f $1 ] ;
then
    echo "file does not exist"
fi


grep -E '[A-Za-z0-9]+@[A-Za-z]+\.iitb\.ac\.in' "$1" > "emails.txt"

# for i in $(cat $1);
# do
#     if [[ $i =~ [A-Za-z0-9]+@[A-Za-z]+.iitb.ac.in ]] ;
#     then
#         echo $i >> "emails.txt"
#     fi
# done

sort -r -f emails.txt > sortedEmails.txt

echo "" > "cseEmails.txt"

for j in $(cat sortedEmails.txt);
do
    if [[ $j =~ @cse.iitb.ac.in ]] ;
    then
        echo $j >> "cseEmails.txt"
    fi
done