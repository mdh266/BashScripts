#!/bin/bash

echo "Please enter a number to be converted from decimal to hexadecimal"

read decim
remainder=$decim

hex=""

while [ $decim -gt 0 ]
do
	remainder=$[$decim % 16]

	if [ $remainder == 10 ]
	then
		hex="A"$hex

	elif [ $remainder == 11 ]
	then
		hex="B"$hex
	
	elif [ $remainder == 12 ]
	then
		hex="C"$hex
		
	elif [ $remainder == 13 ]
	then
		hex="D"$hex
		
	elif [ $remainder == 14 ]
	then
		hex="E"$hex
		
	elif [ $remainder == 15 ]
	then
		hex="F"$hex
	else	
		hex=$remainder$hex
	fi
	decim=$[$decim / 16]
done

echo "hexidecimal representation is " $hex	
