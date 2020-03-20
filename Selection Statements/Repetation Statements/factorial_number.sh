#!/bin/bash -x

read -p "Enter the Number : " number
result=1
for (( i=1 ; i<=number ; i++ ))
do
	(( result=result*i ))
done
printf "Factorial is $result \n"

