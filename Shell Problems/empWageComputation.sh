#!/bin/bash -x

printf "Welcome to Employee Wage Computation Program\n"

absent=0
isPartTime=1
isFullTime=2
empRatePerHour=20
randomCheck=$(( RANDOM%3 ))

if (( $absent==$randomCheck ))
then
		salary=0

elif (( $isPartTime==$randomCheck ))
then
		empHours=4
		salary=$(( $empHours*$empRatePerHour ))

elif (( $isFullTime==$randomCheck ))
then
		empHours=8
		salary=$(( $empHours*$empRatePerHour ))
fi
