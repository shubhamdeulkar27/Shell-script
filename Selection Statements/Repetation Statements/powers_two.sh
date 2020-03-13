#!/bin/bash -x

	read -p "Enter The Number : " n
	res=1;
	MP=2;
	for (( count=1 ; count<=n ; count++ ))
	do
		res=$(($res*$MP))
		printf "$res "
	done
	printf "\n"
