#!/bin/bash -x

read -p "Enter First Number : " num1
read -p "Enter Second Number : " num2

function isPalindrome(){
res=0
sum=0
n1=$1
n2=$2
while [ $n1 -ne 0 ]
do
	rem=$(( $n1%10 ))
	sum=$(( $sum*10+$rem ))
	n1=$(( $n1/10 ))
done

if [ $sum -eq $n2 ]
then
	res=1
	echo "$res"
else
	echo "$res"
fi
}

result="$( isPalindrome $num1 $num2)"
if [ $result -eq 1 ]
then
	printf "Number is Palindrome\n"
else
	printf "Number is Not Palindrome\n"
fi
