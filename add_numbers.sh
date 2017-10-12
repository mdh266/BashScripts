#!/bin/bash

str="This program adds two numbers entered from the command line.  Please"

echo "Enter first number"

read num1

echo "Enter second number"

read num2

if [ -z "$num1" ]
then 
	echo $str "enter a first number" >&2
elif [ -z "$num2" ]
then
	echo $str "enter a second number" >&2
else
	echo $num1 " + " $num2 " = " $(($num1+$num2)) >&1
fi
