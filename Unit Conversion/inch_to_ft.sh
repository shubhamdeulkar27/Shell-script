#!/bin/bash -x

read -p "Enter Unit Inches : " inch
SCALE=12

res=$(($inch/$SCALE))
