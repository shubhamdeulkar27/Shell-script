#!/bin/bash -x

read -p "Enter the Number : " number

function isPrime(){
	count=0
	number1=$1
	for (( i=1 ; i<=$number1 ; i++ ))
	do
		if (( $number1%$i==0 ))
		then
			(( count++ ))
		fi
	done
	if [ $count -eq 2 ]
	then
		echo "1"
	else
		echo "0"
	fi
}

function isPalindrome(){
	number=$1
	n1=$number
	sum=0
	while [ $n1 -ne 0 ]
	do
		rem=$(( $n1%10 ))
		sum=$(( $sum*10+$rem ))
		n1=$(( $n1/10 ))
	done
	if [ $sum -eq $number ]
	then
		echo "$sum"
	else
		echo "0"
	fi
}

result=$( isPrime $number)

if (( $result==1 ))
then
	result2=$( isPalindrome $number )
	if (( $result2!=0 ))
	then
		result3=$( isPrime $result2 )
		if (( $result3==1 ))
		then
			printf "Number and Its Palindrome are Prime\n"
		else
			printf "Palindrome of Number is Not Prime\n"
		fi
	else
		printf "Number is Prime But Not palindrome\n"
	fi
else
	printf "Number is Not Prime\n"
fi
