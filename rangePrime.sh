#!/bin/bash -x

read -p "Enter min value: " n
read -p "Enter max value: " N

for (( i=$n; i<=$N; i++ ))
do
	count=0
		for ((j=1; j<=$i; j++))
		do
			if (($i%$j==0))
			then
				count=$(($count+1))
			fi
		done
	if (($count==2))
	then
		echo "$i"
	fi
done
