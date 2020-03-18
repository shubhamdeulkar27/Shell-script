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
		case $check in
			$isPartime)
				empHour=4
			;;
			$isFullTime)
				empHour=8
			;;
			*)
				empHour=0
			;;
		esac
	echo $empHour
}



while (( $totalWorkingHrs<$MAX_WORKING_HRS && $totalWorkingDays<$MAX_WORKING_DAYS ))
do
	(( totalWorkingDays++ ))
	empHours=$( workHours )
	salary=$(( $empRatePerHour*$empHours ))
	totalSalary=$(($totalSalary+$salary))
	totalWorkingHrs=$(( $totalWorkingHrs+$empHours ))
done
