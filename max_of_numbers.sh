#!/bin/bash

str="This program finds the maximum of three numbers entered from the command line.  Please"

echo "Enter first number"

read num1

echo "Enter second number"

read num2

echo "Enter third number"

read num3

if [ -z "$num1" ]
then 
	echo $str "enter a first number" >&2
elif [ -z "$num2" ]
then
	echo $str "enter a second number" >&2
elif [ -z "$num3" ]
then
	echo $str "enter a third number" >&2
else
	max=$num1 # max = num1
	if [ $num1 -lt $num2 ] # test if num2 > num1
	then
		max=$num2 # max = $num2
		if [ $num2 -lt $num3 ] # test if  num3 > num2
		then
			max=$num3 # max = num3
		fi
	elif [ $num1 -lt $num3 ] # test if num3 > num1
	then
		max=$num3 # then max = num3
	fi
	
	echo "The maximum of the three numbers you entered is" $max
fi
