#!/bin/bash -x

number=$1
result=1
count=1

while [[ $count -le $number ]]
do
	(( result=result*2 ))
	(( count++ ))
	printf "$result "
done

printf "\n"
