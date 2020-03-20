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
echo ${Random[@]}

#FINDING SECOND LARGEST
largest=${Random[0]}
secondLargest=${Random[0]}
for (( i=0;i<10;i++))
do
	if (( $largest<${Random[$i]} ))
	then
		secondLargest=$largest
		largest=${Random[$i]}
	elif (( ${Random[$i]}>$secondLargest && ${Random[$i]}!=$largest ))
	then
		secondLargest=${Random[$i]}
	else
		continue;
	fi
done

#FINDING SECOND SMALLEST
smallest=${Random[0]}
secondSmallest=${Random[0]}
for (( i=0;i<10;i++ ))
do
	if (( $smallest>${Random[$i]} ))
	then
		secondSmallest=$smallest
		smallest=${Random[$i]}
	elif (( ${Random[$i]}<$secondSmallest && ${Random[$i]}!=$smallest ))
	then
		secondSmallest=${Random[$i]}
	else
		continue
	fi
done

echo $secondLargest
echo $secondSmallest
