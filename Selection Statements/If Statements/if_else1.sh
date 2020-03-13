#!/bin/bash -x

	ran1=$((100+RANDOM%900))
	ran2=$((100+RANDOM%900))
	ran3=$((100+RANDOM%900))
	ran4=$((100+RANDOM%900))
	ran5=$((100+RANDOM%900))

	min=0
	MID=500
	max=0
	#FOR FIRST RANDOM NUMBER
	if [ $ran1 -gt $MID ]
	then
		max=$ran1
	elif [ $ran1 -lt $MID ]
	then
		min=$ran1
	else
		echo $ran1 is MID
	fi

	#FOR SECOND RANDOM NUMBER

	if [ $ran2 -gt $MID ]
	then
		max=$ran2
	elif [ $ran2 -lt $MID ]
	then
		min=$ran2
	else
		echo $ran2 is MID
	fi

	#FOR THIRD RANDOM NUMBER

	if [ $ran3 -gt $MID ]
	then
		max=$ran3
	elif [ $ran3 -lt $MID ]
	then
		min=$ran3
	else
		echo $ran3 is MID
	fi

	#FOR FOURTH RANDOM NUMBER

	if [ $ran4 -gt $MID ]
	then
		max=$ran4
	elif [ $ran4 -lt $MID ]
	then
		min=$ran4
	else
		echo $ran4 is MID
	fi

	#FOR FIFTH RANDOM NUMBER

	if [ $ran5 -gt $MID ]
	then
		max=$ran5
	elif [ $ran5 -lt $MID ]
	then
		min=$ran5
	else
		echo $ran5 is MID
	fi
