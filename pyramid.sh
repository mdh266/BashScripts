#!/bin/bash

# prints a pyramid!

cols=`tput cols`
rows=5
start=$((cols/2))
char=*

tput clear
for ((i = 0; i <= 5; i++))
do
	temp=$((start-i))

	tput cup $i $temp

	for ((j = 1; j <= i; j++))
	do
		printf "$i "
	done
done

tput clear
for ((i = 0; i <= 5; i++))
do
	temp=$((start-i))

	tput cup $i $temp

	for ((j = 1; j <= i; j++))
	do
		printf "* "
	done
done

printf "\n"
