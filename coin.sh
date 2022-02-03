#!/bin/bash -x
i=1
count1=0
count2=0
a=50
b=11

while [[ $i -lt $a && $count1 -lt $b && $count2 -lt $b ]]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck == 1 ]
	then
		echo "Heads"
		count1=$(($count1+1))
	else
		echo "Tails"
		count2=$(($count2+1))
	fi
	((i++))
done
