#!/bin/bash -x

printf "Welcome to Employee Wage Computation Program\n"

isPresent=1
randomCheck=$(( RANDOM%2 ))

if (( $randomCheck==$isPresent ))
then
	printf "Employee Is Present"
else
	printf "Employee is Not Present"
fi

