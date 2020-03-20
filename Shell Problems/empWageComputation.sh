#!/bin/bash -x

printf "Welcome to Employee Wage Computation Program\n"

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20
totalSalary=0

MAX_WORKING_HRS=100
MAX_WORKING_DAYS=20

totalWorkingHrs=0
totalWorkingDays=0

function workHours(){
	local check=$(( RANDOM%3 ))
		case $check in
			$IS_PART_TIME)
				empHour=4
			;;
			$IS_FULL_TIME)
				empHour=8
			;;
			*)
				empHour=0
			;;
		esac
	echo $empHour
}

declare -A empDailyWage

while (( $totalWorkingHrs<$MAX_WORKING_HRS && $totalWorkingDays<$MAX_WORKING_DAYS ))
do
	(( totalWorkingDays++ ))
	empHours=$( workHours )
	salary=$(( $EMP_RATE_PER_HOUR*$empHours ))
	totalSalary=$(($totalSalary+$salary))
	totalWorkingHrs=$(( $totalWorkingHrs+$empHours ))
	empDailyWage[$totalWorkingDays]=$salary
done
