#!/bin/bash

file=$1

if [ $# -ne 1 ];
then
    echo "usage: bash $0 <input file>"
fi

if [ ! -f $file ];
then
    echo "file doesnt exist"
fi
temp=0
IFS=","
while IFS= read -r line;
do
    if [ $temp -eq 0 ];
    then
        echo "$line" > ug23.csv
        echo "$line" > ug24.csv
    fi

    if [ $temp -ne 0 ];
    then

        field=0
        ug=0
        # echo $line >> demo.csv
        for x in $line;
        do
            if [ $field -eq 0 ];
            then
                if [[ "$x" =~ ^23B ]];
                then
                    ug=23
                else
                    ug=24
                fi
            fi

            if [ $field -eq 5 ];
            then
                if [[ $ug == 23 ]];
                then
                    if [ $field -eq 5 ];
                    then
                        if [ $x -gt 85 ];
                        then
                            echo "$line,AA" >> "ug23.csv"
                        elif [ $x -le 85 ] && [ $x -gt 65 ];
                        then
                            echo "$line,AB" >> "ug23.csv"
                        elif [ $x -le 65 ] && [ $x -gt 45 ];
                        then
                            echo "$line,BB" >> "ug23.csv"
                        elif [ $x -le 45 ] && [ $x -gt 35 ];
                        then
                            echo "$line,CC" >> "ug23.csv"
                        else
                            echo "$line,F" >> "ug23.csv"
                        fi
                    fi
                elif [ $ug == 24 ];
                then
                    if [ $field -eq 5 ];
                    then
                        if [ $x -gt 85 ];
                        then
                            echo "$line,AA" >> "ug24.csv"
                        elif [ $x -le 85 ] && [ $x -gt 65 ];
                        then
                            echo "$line,AB" >> "ug24.csv"
                        elif [ $x -le 65 ] && [ $x -gt 45 ];
                        then
                            echo "$line,BB" >> "ug24.csv"
                        elif [ $x -le 45 ] && [ $x -gt 35 ];
                        then
                            echo "$line,CC" >> "ug24.csv"
                        else
                            echo "$line,F" >> "ug24.csv"
                        fi
                    fi
                fi
            fi

            let "field++"
        done
    fi
    let "temp++"
done < $file