#!/bin/bash -x

#FUNCTION FOR GENERATING RANDOM NUMBERS
function generateRandom(){
		echo $(( 100+RANDOM%900 ))
}

#GENERATING AND STORING RANDOM NUMBERS IN ARRAY
counter=0
while (( counter<10 ))
do
	Random[((counter++))]=$( generateRandom )
done

#SORTING
temporary=0
for (( i=0;i<counter;i++ ))
do
	for ((  j=0;j<counter;j++ ))
	do
		if (( ${Random[i]}<${Random[j]} ))
		then
			temporary=${Random[i]}
			Random[i]=${Random[j]}
			Random[j]=$temporary;
		fi
	done
done
echo ${Random[@]}

#SECONDSMALLEST
secondSmallest=${Random[1]}
printf "$secondSmallest\n"

#SECONDLARGEST
secondLargest=${Random[counter-2]}
printf "$secondLargest\n"
