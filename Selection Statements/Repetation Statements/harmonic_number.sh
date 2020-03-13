#!/bin/bash -x

	read -p "Enter the Number : " n
	H=1
	res=1

	#`echo "$H+$H/$n"|bc -l`

	for (( i=2 ; i<=n ; i++ ))
	do
		res=`echo "$res+$H/$i"|bc -l`
	done
