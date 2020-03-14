#!/bin/bash -x

money=100
WIN=1
LOST=0
counterW=0
counterB=0
while [[ $money -ge 0 || $money -le 200 ]]
do
	bet=$(( RANDOM%2 ))
	(( counterB++ ))
	if [ $bet -eq $WIN ]
	then
		(( counterW++ ))
		(( money++ ))
		if [ $money -eq 200 ]
		then
			break;
		fi
	elif [ $bet -eq $LOST ]
	then
		(( money-- ))
		if [ $money -eq 0 ]
		then
			break
		fi
	fi
done

