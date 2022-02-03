#!/bin/bash -x

count=0
read -p "Enter the number : " n

for (( i=1; i<=$n; i++ ))
do
	if (($n%$i==0))
	then
		((count++))
	fi
done

if (($count==2))
then
	echo "Prime number"
else
	echo "Not a prime number"
fi
