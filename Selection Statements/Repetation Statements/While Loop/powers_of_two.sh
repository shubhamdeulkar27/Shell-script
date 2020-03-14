#!/bin/bash -x

num=$1
res=1
count=1

while [[ $count -le $num ]]
do
	(( res=res*2 ))
	(( count++ ))
	printf "$res "
done

printf "\n"
