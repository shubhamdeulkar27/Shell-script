#!/bin/bash -x

read -p "Enter the First Number : " first
read -p "Enter the Last Number : " last

for (( i=$first ; i<=$last ; i++ ))
do
	count=0
	for (( j=1 ; j<=i ;j++ ))
	do
		if (( $i%$j==0 ))
		then
			(( count++ ))
		fi
	done

	if [ $count -eq 2 ]
	then
		printf "$i\t"
	fi
done
printf "\n"
