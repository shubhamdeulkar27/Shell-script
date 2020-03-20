#!/bin/bash -x

read -p "Enter the Number to Check : " number
count=0

for (( i=1 ; i<=number ; i++ ))
do
	if (( $number%$i==0 ))
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
