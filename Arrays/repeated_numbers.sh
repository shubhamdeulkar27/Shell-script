#!/bin/bash -x

counter=0
for (( rowIndex=1;rowIndex<100;rowIndex++ ))
do
	if (( $rowIndex%11==0 ))
	then
		Array[(( counter++ ))]=$rowIndex
	fi
done
echo ${Array[@]}
