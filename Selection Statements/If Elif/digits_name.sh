#!/bin/bash -x

	read -p "Enter the Number : " num
	if [ $num -ge 0 -a $num -le 9 ]
	then
		printf "Unit\n"
	elif [ $num -ge 10 -a $num -le 99 ]
	then
		printf "Ten\n"
	elif [ $num -ge 100 -a $num -le 999 ]
	then
		printf "Hundred\n"
	elif [ $num -ge 1000 -a $num -le 9999 ]
	then
		printf "Thousand\n"
	else
		printf "Invalid Input"
	fi
