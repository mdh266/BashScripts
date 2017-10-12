#!/bin/bash

# Computes the factorial of entered number

echo "Please enter a number greater than zero"

read num

fact=1
counter=$num

if [ $num -lt 1 ]
then
	echo "Th number must be greater than zero" >&2
else
	while [ $counter -gt 1 ]
	do
		fact=`expr $counter \* $fact`
		counter=`expr $counter - 1`
	done
fi

echo $num"! = " $fact
