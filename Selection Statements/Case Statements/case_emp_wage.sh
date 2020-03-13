#!/bin/bash -x

PARTTIME=1
FULLTIME=2
empRate=20
empCheck=$((RANDOM%3))
case $empCheck in
	$FULLTIME)
		empHrs=8
		;;
	$PARTTIME)
		empHrs=4
		;;
		*)
		empHrs=0
		;;
esac
salary=$(($empRate*$empHrs))
