#!/bin/bash

for i in $(ls);
do
    # echo $i
    if [[ $i =~ .out ]] ;
    then
        echo "$@" >> "$i"
    fi
done