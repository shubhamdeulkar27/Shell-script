#!/bin/bash -x
read -p "Enter the Number : " number
Harmonic=1
result=1

for (( i=2 ; i<=number ; i++ ))
do
	result=`echo "$result+$Harmonic/$i"|bc -l`
done
