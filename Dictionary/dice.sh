#!/bin/bash -x

#VARIBALES AND DICTIONARY
winCount=0
count=0
declare -A result
for (( rowIndex=1;rowIndex<=6;rowIndex++ ))
do
	result[$rowIndex]=$count
done
#ROLLING DICE 
while (( $winCount!=1 ))
do
	dice=$(( 1+RANDOM%6 ))
	case $dice in
		1)
			(( result[$dice]+=1))
		;;
		2)
			(( result[$dice]+=1 ))
		;;
		3)
			(( result[$dice]+=1 ))
		;;
		4)
			(( result[$dice]+=1 ))
		;;
		5)
			(( result[$dice]+=1 ))
		;;
		6)
			(( result[$dice]+=1 ))
		;;
		*)
		printf "Error"
		;;
	esac
	if (( result[1]==10 )) || (( result[2]==10 )) || (( result[3]==10 )) || (( result[4]==10 )) || (( result[5]==10 )) || (( result[6]==10 ))
	then
		winCount=1
	else
		continue
	fi
done

#FINDING MINIMUM AND MAXIMUM
minimum=10
maximum=0
for (( rowCount=1;rowCount<=6;rowCount++ ))
do
	if (( minimum>result[$rowCount]))
	then
		 minimum=result[$rowCount]
		minIndex=$rowCount
	fi
	if (( maximum<result[$rowCount] ))
	then
		maximum=result[$rowCount]
		maxIndex=$rowCount
	fi
done

printf "Maximum occurances of : $maxIndex\nMinimum occurances of : $minIndex\n"
