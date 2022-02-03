#!/bin/bash -x

fact=1
read -p "Enter a number: " n

for (( i=1; i<=$n; i++ ))
do
	echo "$i"
	fact=$(($fact*$i))
done

	echo "$n factorial -$n! = $fact "
