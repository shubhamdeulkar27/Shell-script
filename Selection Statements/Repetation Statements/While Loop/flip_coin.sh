#!/bin/bash -x

IS_HEAD=0
IS_TAIL=1

winHead=0
winTail=0
counter=0
while [ counter ]
do
	flipCoin=$(( RANDOM%2 ))
	if	[ $flipCoin -eq $IS_HEAD ]
	then
		(( winHead++ ))
		if [ $winHead -eq 10 ]
		then
			break
		fi
	elif	[ $flipCoin -eq $IS_TAIL ]
	then
		(( winTail++ ))
		if [ $winTail -eq 10 ]
		then
			break
		fi
	fi
done
printf "Heads : $winHead\nTail : $winTail\n"
