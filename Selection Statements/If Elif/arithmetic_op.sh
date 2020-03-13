#!/bin/bash -x

read -p "Enter 1st Number : " a
read -p "Enter 2nd Number : " b
read -p "Enter 3rd Number : "	c

#PERFORMING ARITHMETIC OPERATION
res1=$(($a+$b*$c))
res2=$(($a%$b+$c))
res3=$(($c+$a/$b))
res4=$(($a*$b+$c))

#FINDING MAXIMUM
if [[ $res1 -gt $res2 ]] && [[ $res1 -gt $res3 ]] && [[ $res1 -gt $res4 ]]
then
	max=$res1
elif [[ $res2 -gt $res1 ]] && [[ $res2 -gt $res3 ]] && [[ $res2 -gt $res4 ]]
then
	max=$res2
elif [[ $res3 -gt $res1 ]] && [[ $res3 -gt $res2 ]] && [[ $res3 -gt $res4 ]]
then
	max=$res3
elif [[ $res4 -gt $res1 ]] && [[ $res4 -gt $res2 ]] && [[ $res4 -gt $res3 ]]
then
	max=$res4
else
	printf "Error"
fi

#FINDING MINIMUM
if [[ $res1 -lt $res2 ]] && [[ $res1 -lt $res3 ]] && [[ $res1 -lt $res4 ]]
then
	min=$res1
elif [[ $res2 -lt $res1 ]] && [[ $res2 -lt $res3 ]] && [[ $res2 -lt $res4 ]]
then
	min=$res2
elif [[ $res3 -lt $res1 ]] && [[ $res3 -lt $res2 ]] && [[ $res3 -lt $res4 ]]
then
	min=$res3
elif [[ $res4 -lt $res1 ]] && [[ $res4 -lt $res2 ]] && [[ $res4 -lt $res3 ]]
then
	min=$res4
else
	printf "Error"
fi

printf "Maximum : $max\nMinimum : $min\n"
