#!/bin/bash -x

printf "Welcome to Employee Wage Computation Program\n"

isPresent=1
randomCheck=$(( RANDOM%2 ))

if (( $randomCheck==$isPresent ))
then
	empRatePerHour=20
	empHours=8
	salary=$(( $empHours*$empRatePerHour ))
else
	salary=0
fi

