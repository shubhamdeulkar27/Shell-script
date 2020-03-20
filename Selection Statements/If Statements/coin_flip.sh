#!/bin/bash -x

coin=$((RANDOM%2))
HEAD=0
TAIL=1

if [ $coin -eq	$HEAD  ]
then
	printf "Heads\n"
elif [ $coin -eq $TAIL ]
then
	printf "Tails\n"
fi
