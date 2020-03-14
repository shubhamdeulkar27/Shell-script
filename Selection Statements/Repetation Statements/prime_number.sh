#!/bin/bash -x

read -p "Enter the Number to Check : " num
count=0

for (( i=1 ; i<=num ; i++ ))
do
	if (( $num%$i==0 ))
	then
		(( count++ ))
	fi
done

if [ $count -eq 2 ]
then
	printf "It is a Prime Number\n"
else
	printf "It is not a Prime Number\n"
fi
