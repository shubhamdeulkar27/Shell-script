#!/bin/bash -x


printf "Enter\n1 Feet to Inch\n2 Feet to Meter\n3 Inch to Feet\n4 Meter to Feet\n"
read -p "Enter Operation : " op
read -p "Enter Data : " data

case $op in
	1)
	res=$(($data*12))
	echo "$res Inch"
	;;
	2)
	res=`echo "$data * 0.3048"|bc`
	echo "$res Meter"
	;;
	3)
	res=`echo "$data * 0.0803030"|bc`
	echo "$res Feet"
	;;
	4)
	res=`echo "$data * 0.3048"|bc`
	echo "$res Feet"
	;;
	*)
	echo "Invalid Option"
	;;
esac
