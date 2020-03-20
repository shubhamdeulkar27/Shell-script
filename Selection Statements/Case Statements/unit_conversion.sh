#!/bin/bash -x


printf "Enter\n1 Feet to Inch\n2 Feet to Meter\n3 Inch to Feet\n4 Meter to Feet\n"
read -p "Enter Operation : " operation
read -p "Enter Data : " data

case $operation in
	1)
		result=$(($data*12))
		echo "$result Inch"
	;;
	2)
		result=`echo "$data * 0.3048"|bc`
		echo "$result Meter"
	;;
	3)
		result=`echo "$data * 0.0803030"|bc`
		echo "$result Feet"
	;;
	4)
		result=`echo "$data * 0.3048"|bc`
		echo "$result Feet"
	;;
	*)
		echo "Invalid Option"
	;;
esac
