#!/bin/bash
#args=("$@")
#echo arguments to the shell
#echo ${args[0]} ${args[1]} ${args[2]}
#use $@ to print out all arguments at once
#echo $@ ' -> echo $@'
args=("$@")
hold=("$#")
declare -a list
list=("$args[@:2]")
i=0
for x in "${@:2}"; do
	list[$i]=$x
	i=$[i+1]
done
#for (( i=0; i<${hold}; i++ )); do
#	${list[${i}]}=${args[${i}+1]}
#done

function mergeSort {
	local array1=("$@")
	decalre -i j
	j=0
	echo ${array1[$j]}
}

#function search {
#	word=("$1")
#	array2=("$2")
#
#}

mergeSort "${list[@]}"