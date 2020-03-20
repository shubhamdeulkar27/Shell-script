#!/bin/bash -x

read -p "Enter any One Digit Number : " number

if [ $number -eq 0 ]
then
	printf "Zero\n"
elif [ $number -eq 1 ]
then
	printf "One\n"
elif [ $number -eq 2 ]
then
	printf "Two\n"
elif [ $number -eq 3 ]
then
	printf "Three\n"
elif [ $number -eq 4 ]
then
	printf "Four\n"
elif [ $number -eq 5 ]
then
	printf "Five\n"
elif [ $number -eq 6 ]
then
	printf "Six\n"
elif [ $number -eq 7 ]
then
	printf "Seven\n"
elif [ $number -eq 8 ]
then
	printf "Eight\n"
elif [ $number -eq 9 ]
then
	printf "Nine\n"
else
	printf "Invalid Input\n"
fi
