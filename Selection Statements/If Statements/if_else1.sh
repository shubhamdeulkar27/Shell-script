#!/bin/bash -x

random1=$((100+RANDOM%900))
random2=$((100+RANDOM%900))
random3=$((100+RANDOM%900))
random4=$((100+RANDOM%900))
random5=$((100+RANDOM%900))

#For Maximum
if [[ $random1 -gt $random2 ]] && [[ $random1 -gt $random3 ]] && [[ $random1 -gt $random4 ]] && [[ $random1 -gt $random5 ]]
then
	max=$random1
elif [[ $random2 -gt $random1 ]] && [[ $random2 -gt $random3 ]] && [[ $random2 -gt $random4 ]] && [[ $random2 -gt $random5 ]]
then
	max=$random2
elif [[ $random3 -gt $random1 ]] && [[ $random3 -gt $random2 ]] && [[ $random3 -gt $random4 ]] && [[ $random3 -gt $random5 ]]
then
	max=$random3
elif [[ $random4 -gt $random1 ]] && [[ $random4 -gt $random2 ]] && [[ $random4 -gt $random3 ]] && [[ $random4 -gt $random5 ]]
then
	max=$random4
elif [[ $random5 -gt $random1 ]] && [[ $random5 -gt $random2 ]] && [[ $random5 -gt $random3 ]] && [[ $random5 -gt $random4 ]]
then
	max=$random5
fi

#For Minimum
if [[ $random1 -lt $random2 ]] && [[ $random1 -lt $random3 ]] && [[ $random1 -lt $random4 ]] && [[ $random1 -lt $random5 ]]
then
	min=$random1
elif [[ $random2 -lt $random1 ]] && [[ $random2 -lt $random3 ]] && [[ $random2 -lt $random4 ]] && [[ $random2 -lt $random5 ]]
then
	min=$random2
elif [[ $random3 -lt $random1 ]] && [[ $random3 -lt $random2 ]] && [[ $random3 -lt $random4 ]] && [[ $random3 -lt $random5 ]]
then
	min=$random3
elif [[ $random4 -lt $random1 ]] && [[ $random4 -lt $random2 ]] && [[ $random4 -lt $random3 ]] && [[ $random4 -lt $random5 ]]
then
	min=$random4
elif [[ $random5 -lt $random1 ]] && [[ $random5 -lt $random2 ]] && [[ $random5 -lt $random3 ]] && [[ $random5 -lt $random4 ]]
then
	min=$random5
fi

printf "Maximum is : $max\nMinimum is : $min\n"

