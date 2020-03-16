#!/bin/bash -x

read -p "Enter First Number : " num1
read -p "Enter Second Number : " num2
sum=0
while [ $num1 -ne 0 ]
do
	rem=$(( $num1%10 ))
	sum=$(( $sum*10+$rem ))
	num1=$(( $num1/10 ))
done

if [ $sum -eq $num2 ]
then
	printf "Numbers are Palindrome"
else
	printf "Numbers are Not Palindrome"
fi
