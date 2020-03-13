#!/bin/bash -x

PARTTIME=1
FULLTIME=2
empRatePerHour=20
randomEmp=$((RANDOM%3))

if [ $randomEmp -eq $PARTTIME ]
then
	empHrs=4
elif [ $randomEmp -eq $FULLTIME ]
then
	empHrs=8
else
	empHrs=0
fi

Salary=$(($empRatePerHour*$empHrs))
