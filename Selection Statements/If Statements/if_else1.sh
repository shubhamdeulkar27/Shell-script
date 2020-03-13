#!/bin/bash -x

	ran1=$((100+RANDOM%900))
	ran2=$((100+RANDOM%900))
	ran3=$((100+RANDOM%900))
	ran4=$((100+RANDOM%900))
	ran5=$((100+RANDOM%900))
	#For Maximum
	if [[ $ran1 -gt $ran2 ]] && [[ $ran1 -gt $ran3 ]] && [[ $ran1 -gt $ran4 ]] && [[ $ran1 -gt $ran5 ]]
	then
		max=$ran1
	elif [[ $ran2 -gt $ran1 ]] && [[ $ran2 -gt $ran3 ]] && [[ $ran2 -gt $ran4 ]] && [[ $ran2 -gt $ran5 ]]
	then
		max=$ran2
	elif [[ $ran3 -gt $ran1 ]] && [[ $ran3 -gt $ran2 ]] && [[ $ran3 -gt $ran4 ]] && [[ $ran3 -gt $ran5 ]]
	then
		max=$ran3
	elif [[ $ran4 -gt $ran1 ]] && [[ $ran4 -gt $ran2 ]] && [[ $ran4 -gt $ran3 ]] && [[ $ran4 -gt $ran5 ]]
	then
		max=$ran4
	elif [[ $ran5 -gt $ran1 ]] && [[ $ran5 -gt $ran2 ]] && [[ $ran5 -gt $ran3 ]] && [[ $ran5 -gt $ran4 ]]
	then
		max=$ran5
	fi

	#For Minimum
	if [[ $ran1 -lt $ran2 ]] && [[ $ran1 -lt $ran3 ]] && [[ $ran1 -lt $ran4 ]] && [[ $ran1 -lt $ran5 ]]
	then
		min=$ran1
	elif [[ $ran2 -lt $ran1 ]] && [[ $ran2 -lt $ran3 ]] && [[ $ran2 -lt $ran4 ]] && [[ $ran2 -lt $ran5 ]]
	then
		min=$ran2
	elif [[ $ran3 -lt $ran1 ]] && [[ $ran3 -lt $ran2 ]] && [[ $ran3 -lt $ran4 ]] && [[ $ran3 -lt $ran5 ]]
	then
		min=$ran3
	elif [[ $ran4 -lt $ran1 ]] && [[ $ran4 -lt $ran2 ]] && [[ $ran4 -lt $ran3 ]] && [[ $ran4 -lt $ran5 ]]
	then
		min=$ran4
	elif [[ $ran5 -lt $ran1 ]] && [[$ran5 -lt $ran2]] && [[ $ran5 -lt $ran3 ]] && [[ $ran5 -lt $ran4 ]]
	then
		min=$ran5
	fi

	printf "Maximum is : $max\nMinimum is : $min\n"

