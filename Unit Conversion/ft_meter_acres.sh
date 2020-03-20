#!/bin/bash -x


read -p "Enter L in feet " l
read -p "Enter W in feet " w

#FEET TO METER
len=`echo "$l * 0.3048"|bc `
wed=`echo "$w * 0.3048"|bc`
echo Plot is of $len x $wed

#METER TO ACRES
sqMeter=`echo "$len * $wed"|bc`
acres=`echo "$sqMeter * 0.000247105"|bc`

