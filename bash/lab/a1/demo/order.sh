#!/bin/bash
echo > "sortedEmails.txt"
lowest="zzzzzzzzzzzzzzzzzzzz"
for x in $(cat emails.txt);
do
    # echo "this is x: $x"
    for y in $(cat emails.txt);
    do
        # echo "this is y: $y"
        temp=0
        for z in $(cat sortedEmails.txt);
        do
            if [ $y == $z ] ;
            then
                temp=1
            fi
        done

        if [ "$lowest" < "$y" ] && [ $temp -ne 1 ] ;
        then
            lowest="$y"
        fi
    done
    echo "$lowest" >> "sortedEmails.txt"
done