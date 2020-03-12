#!/bin/bash -x

read -p "Enter the Month : " m
read -p "Enter the Day : " d
read -p "Enter the Year : " y

yo=$(($(($y-$((14-$m))))/12))
x=$(($yo+$(($yo/4))-$(($yo/100))+$(($yo/400))))
mo=$(($m+12*$(($((14-m))/12))-2))
d0=$(($(($d+$x+31*$mo/12))%7))
