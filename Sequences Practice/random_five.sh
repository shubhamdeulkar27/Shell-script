#!/bin/bash -x

ran1=$((10+RANDOM%100))
ran2=$((10+RANDOM%100))
ran3=$((10+RANDOM%100))
ran4=$((10+random%100))
ran5=$((10+random%100))

sum=$(($ran1+$ran2+$ran3+$ran4+$ran5))
average=$(($sum/5))
