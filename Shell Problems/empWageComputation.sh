#!/bin/bash -x

printf "Welcome to Employee Wage Computation Program\n"

isPartTime=1
isFullTime=2
empRatePerHour=20
randomCheck=$(( RANDOM%3 ))

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
