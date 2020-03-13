#!/bin/bash -x

for filename in $(ls)
do
	#TAKE THE EXTENTION
	ext=${filename##*\.}
	case "$ext" in
		java) echo "$filename : Java Source File"
		;;
		o)	echo "$filename : object File"
		;;
		sh) echo "$filename : Shell Script"
		;;
		txt) echo "$filename : Text File"
		;;
		*)	echo "$filename : Not Processed"
		;;
	esac
done
