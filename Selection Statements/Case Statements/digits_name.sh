#!/bin/bash -x

read -p "Enter Number : " number
case $number in
	1)
		echo "Unit"
	;;
	10)
		echo "Ten"
	;;
	100)
		echo "Hundred"
	;;
	1000)
		echo "Thousand"
	;;
	100000)
		echo "Lks"
	;;
	*)
		echo "Unknown"
	;;
esac
