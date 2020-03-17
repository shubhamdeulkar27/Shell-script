#!/bin/bash -x

#GENRATING MONTHS
function monthsRan(){
	month=$(( 1+RANDOM%12 ))
	echo $month
}

#CREATING DICTIONARY
declare -A birthMonths
count=0
for (( rowCount=1 ; rowCount<=12 ; rowCount++ ))
do
birthMonths[$rowCount]=$count
done


INDIVIDUALS=50
for (( rowIndex=1;rowIndex<=INDIVIDUALS;rowIndex++ ))
do
	birthMonth=$( monthsRan )
	case $birthMonth in
		1)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		2)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		3)
		(( birthmonths[$birthMonth]+=1 ))
		;;
		4)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		5)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		6)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		7)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		8)
		(( birthmonths[$birthMonths]+=1 ))
		;;
		9)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		10)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		11)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		12)
		(( birthMonths[$birthMonth]+=1 ))
		;;
		*)
		echo "Invalid"
		;;
	esac
done

for (( rowCount=1 ; rowCount<=12 ; rowCount++ ))
do
	printf "People Born in $rowCount-month ${birthMonths[$rowCount]}\n "
done
