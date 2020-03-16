#!/bin/bash -x

#FUNCTION FOR GENERATING RANDOM NUMBERS
function genRandom(){
		echo $(( 100+RANDOM%900 ))
}

#GENERATING AND STORING RANDOM NUMBERS IN ARRAY
counter=0
while (( counter<10 ))
do
	Random[((counter++))]=$( genRandom )
done

#SORTING
temp=0
for (( i=0;i<counter;i++ ))
do
	for ((  j=0;j<counter;j++ ))
	do
		if (( ${Random[i]}<${Random[j]} ))
		then
			temp=${Random[i]}
			Random[i]=${Random[j]}
			Random[j]=$temp;
		fi
	done
done

#SECONDSMALLEST
secondSmallest=${Random[1]}
printf "$secondSmallest\n"

#SECONDLARGEST
secondLargest=${Random[counter-2]}
printf "$secondLargest\n"
