#!/bin/bash -x
#TAKING INPUT
printf "Enter Three Numbers : \n" 
for (( rowIndex=0;rowIndex<3;rowIndex++ ))
do
	read -p "Enter Number : " input
	Array[rowIndex]=$input
done
#ADDITION
sum=0
for (( rowIndex=0;rowIndex<3;rowIndex++ ))
do
	sum=$(( $sum+${Array[rowIndex]} ))
done
#OUTPUT
if (( $sum==0 ))
then
	printf "Sum is $sum\n"
else
	printf "Sum is not 0\n"
fi
