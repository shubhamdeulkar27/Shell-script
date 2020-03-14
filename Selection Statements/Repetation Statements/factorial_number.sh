#!/bin/bash -x

read -p "Enter the Number : " num
result=1
for (( i=1 ; i<=num ; i++ ))
do
	(( result=result*i ))
done
printf "Factorial is $result \n"

