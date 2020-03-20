#!/bin/bash -x

read -p "Enter 1st Number : " a
read -p "Enter 2nd Number : " b
read -p "Enter 3rd Number : "	c

#PERFORMING ARITHMETIC OPERATION
result1=$(($a+$b*$c))
result2=$(($a%$b+$c))
result3=$(($c+$a/$b))
result4=$(($a*$b+$c))

#FINDING MAXIMUM
if [[ $result1 -gt $result2 ]] && [[ $result1 -gt $result3 ]] && [[ $result1 -gt $result4 ]]
then
	max=$result1
elif [[ $result2 -gt $result1 ]] && [[ $result2 -gt $result3 ]] && [[ $result2 -gt $result4 ]]
then
	max=$result2
elif [[ $result3 -gt $result1 ]] && [[ $result3 -gt $result2 ]] && [[ $result3 -gt $result4 ]]
then
	max=$result3
elif [[ $result4 -gt $result1 ]] && [[ $result4 -gt $result2 ]] && [[ $result4 -gt $result3 ]]
then
	max=$result4
else
	printf "Error"
fi

#FINDING MINIMUM
if [[ $result1 -lt $result2 ]] && [[ $result1 -lt $result3 ]] && [[ $result1 -lt $result4 ]]
then
	min=$result1
elif [[ $result2 -lt $result1 ]] && [[ $result2 -lt $result3 ]] && [[ $result2 -lt $result4 ]]
then
	min=$result2
elif [[ $result3 -lt $result1 ]] && [[ $result3 -lt $result2 ]] && [[ $result3 -lt $result4 ]]
then
	min=$result3
elif [[ $result4 -lt $result1 ]] && [[ $result4 -lt $result2 ]] && [[ $result4 -lt $result3 ]]
then
	min=$result4
else
	printf "Error"
fi

printf "Maximum : $max\nMinimum : $min\n"
