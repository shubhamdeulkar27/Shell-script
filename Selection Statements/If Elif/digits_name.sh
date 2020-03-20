#!/bin/bash -x

read -p "Enter the Number : " number

if [ $number -ge 0 -a $number -le 9 ]
then
	printf "Unit\n"
elif [ $number -ge 10 -a $number -le 99 ]
then
	printf "Ten\n"
elif [ $number -ge 100 -a $number -le 999 ]
then
	printf "Hundred\n"
elif [ $number -ge 1000 -a $number -le 9999 ]
then
	printf "Thousand\n"
else
	printf "Invalid Input"
fi
