#!/bin/bash -x

read -p "Enter The Number : " number
result=1;
Multiplier=2;

for (( count=1 ; count<=number ; count++ ))
do
	result=$(($result*$Multiplier))
	printf "$result "
done
printf "\n"
