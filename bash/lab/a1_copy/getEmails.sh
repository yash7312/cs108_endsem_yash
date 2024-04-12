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

for i in $(cat $1);
do
    if [[ $i =~ [A-Za-z0-9]+@[A-Za-z]+.iitb.ac.in ]] ;
    then
        echo $i >> "emails.txt"
    fi
done
lowest=""
for x in $(cat emails.txt);
do
    
    for y in $(cat emails.txt);
    do
        temp=0
        for z in $(cat sortedEmails.txt);
        do
            if [ $y == $z ] ;
            then
                temp=1
            fi
        done

        if [ "$lowest" > "$y" ] && [ $temp -ne 1 ] ;
        then
            lowest="$y"
        fi
    done
    echo $lowest >> sortedEmails.txt
done

for j in $(cat emails.txt);
do
    if [[ $j =~ @cse.iitb.ac.in ]] ;
    then
        echo $j >> "cseEmails.txt"
    fi
done