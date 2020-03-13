#!/bin/bash -x

	read -p "Enter the Number" day
	if [ $day -eq 0 ]
	then
		printf "Sunday\n"
	elif [ $day -eq 1 ]
	then
		printf "Monday\n"
	elif [ $day -eq 2 ]
	then
		printf "Tuesday\n"
	elif [ $day -eq 3 ]
	then
		printf "Wednesday\n"
	elif [ $day -eq 4 ]
	then
		printf "Thursday\n"
	elif [ $day -eq 5 ]
	then
		printf "Friday\n"
	elif [ $day -eq 6 ]
	then
		printf "Saturday"
	else
		printf "Ivalid Input\n"
	fi
