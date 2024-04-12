#!/bin/bash
file="$1"
for i in $(ls);
do
    if [[ $i =~ .pdf$ ]] ;
    then
        num=${i:0:-4}
        temp=1
        found=0
        name=""
        while IFS= read -r line; do
            # temp=0
            # found=0
            for j in $line;
            do
                # echo "o/p: $j"
                if [ $j == $num ] ;
                then
                    found=$((temp+1))
                fi
                if [ $found == $temp ] ;
                then
                    name="$j"
                    found=0
                fi
                # echo "found is: $found"
                # echo "temp is: $temp"
                # echo "\n"
                let "temp++"
            done
        done < $file
        mv $i "$num""_$name.pdf"
    fi
    
done
