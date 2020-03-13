#!/bin/bash -x

read -p "Enter any One Digit Number : " num

if [ $num -eq 0 ]
then
	printf "Zero\n"
elif [ $num -eq 1 ]
then
	printf "One\n"
elif [ $num -eq 2 ]
then
	printf "Two\n"
elif [ $num -eq 3 ]
then
	printf "Three\n"
elif [ $num -eq 4 ]
then
	printf "Four\n"
elif [ $num -eq 5 ]
then
	printf "Five\n"
elif [ $num -eq 6 ]
then
	printf "Six\n"
elif [ $num -eq 7 ]
then
	printf "Seven\n"
elif [ $num -eq 8 ]
then
	printf "Eight\n"
elif [ $num -eq 9 ]
then
	printf "Nine\n"
else
	printf "Invalid Input\n"
fi
