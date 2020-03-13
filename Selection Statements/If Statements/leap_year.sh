#!/bin/bash -x
	
	read -p "Enter the Year : "  year
	res=0	
	if [ $(($year%4)) -eq 0 -a $(($year%100)) -ne 0 ]
	then
		res=1
	elif [ $(($year%400)) -eq 0 ]
	then 
		res=1
	else
		res=0
	fi

	if [ $res -eq 1 ]
	then
		printf "It is A Leap Year\n"
	else
		printf "It is Not A Leap Year\n"
	fi
