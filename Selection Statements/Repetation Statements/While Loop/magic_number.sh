#!/bin/bash -x

printf "Think Any Number From 1 to 100\n"

first=1
mid=$(( 1+RANDOM%100 ))
last=100
counter=0

while [ $counter ]
do
	printf "Enter\n0 if Number is greater than $mid\n1 if Number is less than $mid\n2 if Number is yours "
	read -p "Enter : " n
	case $n in
		0)
		first=$mid
		mid=$(( $mid+$mid/2 ))
		;;
		1)
		last=$mid
		mid=$(( $mid-$mid/2 ))
		;;
		2)
		printf "Your Number is $mid "
		break;
		;;
		*)
		echo "Invalid Input "
		;;
	esac
done
