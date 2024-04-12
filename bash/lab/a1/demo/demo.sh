#!/bin/bash
a="A"
b="a"
if [ "$a" > "$b" ];
then
    echo "a is bigger"
elif [ "$a" < "$b" ];
then
    echo "b is bigger"

else
    echo "equal"
fi