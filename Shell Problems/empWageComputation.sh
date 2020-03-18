#!/bin/bash -x

printf "Welcome to Employee Wage Computation Program\n"

isPartTime=1
isFullTime=2
empRatePerHour=20
numberOfWorkingDays=20
totalSalary=0

MAX_WORKING_HRS=100
MAX_WORKING_DAYS=20

totalWorkingHrs=0
totalWorkingDays=0

function workHours(){
	local check=$(( RANDOM%3 ))
	echo $check
}

while (( $totalWorkingHrs<$MAX_WORKING_HRS && $totalWorkingDays<$MAX_WORKING_DAYS ))
do
	(( totalWorkingDays++ ))
	randomCheck=$( workHours )
		case $randomCheck in
			$isPartTime)
				empHours=4
			;;
			$isFullTime)
				empHours=8
			;;
			*)
				empHours=0
			;;
		esac
	salary=$(( $empRatePerHour*$empHours ))
	totalSalary=$(($totalSalary+$salary))
	totalWorkingHrs=$(( $totalWorkingHrs+$empHours ))
done
