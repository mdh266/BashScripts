#!/bin/bash

# converts farenheit to celcius or celcius to farenheit

echo "Please enter a temparture in (C) or (F).  Ex: 35F"

read temp1

len=${#temp1}

unit=`echo "$temp1" | tail -c +$len`

len2=$[$len-1]

rawTemp1=`echo "$temp1" | head -c +$len2`


if [ "$unit" == "F" ]
then
	rawTemp2=$[$rawTemp1-32]
	rawTemp2=$[$rawTemp2*5]
	rawTemp2=$[$rawTemp2/9]
	unit2="C"
elif [ "$unit" == "C" ]
then
	rawTemp2=$[$rawTemp1*9]
	rawTemp2=$[$rawTemp2/5]
	rawTemp2=$[$rawTemp2+32]	
	unit2="F"
else
	echo "Please use capital letters and no spaces when entering temperature" >2&
fi


echo "The temperature " $temp1 " is converted to " $rawTemp2$unit2
