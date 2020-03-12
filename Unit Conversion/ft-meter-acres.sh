#!/bin/bash -x

#Feet to Meter
read -p "Enter L in feet " l
read -p "Enter W in feet " w

len=`echo "$l * 0.3048"|bc `
wed=`echo "$w * 0.3048"|bc`
echo Plot is of $len x $wed


#Meter to Acres
sqMeter=`echo "$len * $wed"|bc`
acres=`echo "$sqMeter * 0.000247105"|bc`

