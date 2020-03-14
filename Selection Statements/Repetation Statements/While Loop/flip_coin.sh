#!/bin/bash -x

HEAD=0
TAIL=1

winH=0
winT=0
counter=0
while [ counter ]
do
	flipCoin=$(( RANDOM%2 ))
	if	[ $flipCoin -eq $HEAD ]
	then
		(( winH++ ))
		if [ $winH -eq 11 ]
		then
			break
		fi
	elif	[ $flipCoin -eq $TAIL ]
	then
		(( winT++ ))
		if [ $winT -eq 11 ]
		then
			break
		fi
	fi
done
printf "Heads : $winH\nTail : $winT\n"
