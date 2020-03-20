#!/bin/bash -x

#CONSTANTS
Choice1=1
Choice2=2
function celToFar(){
	echo "$(( $(( $1*9 ))/5+32 ))"
}

function farToCel(){
	echo "$(( $(( $1-32 ))*5/9 ))"
}

printf "Enter\n1 for degC to degF\n2 for degF to degC\n"
read -p "Enter Choice : " choice
read -p "Enter Data : " data

case $choice in
	$Choice1)
		if [[ $data -ge 0 && $data -le 100 ]]
		then
			result="$( celToFar $data)"
		else
			printf "Invalid Data"
		fi
	;;
	$Choice2)
		if [[ $data -ge 32 && $data -le 212 ]]
		then
			result="$( farToCel $data)"
		else
			printf "Invalid Data"
		fi
	;;
	*)
		printf "Invalid Choice"
	;;
esac

printf "$result \n"
