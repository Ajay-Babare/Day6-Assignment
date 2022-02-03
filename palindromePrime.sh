#!/bin/bash -x

count=0
sum=0
r=0

read -p "Enter the number : " n
temp=$n

function getPalindromeNumber ()
{
        if [ $sum == $temp ]
        then
                echo "$temp is a Palindrome number"
        else
                echo "$temp is not a Palindrome Number"
        fi
}

function getPrimeNumber ()
{
	if (($count==2))
	then
        	echo "$n Prime number"
	else
		echo "$n Not a prime number"
	fi
}

for (( i=1; i<=$n; i++ ))
do
	if (($n%$i==0))
	then
		((count++))
	fi
done

getPrimeNumber

while [ $n -gt 0 ]
do
	r=$(($n%10))
	sum=$(($sum*10+$r))
	n=$(($n/10))
 done

getPalindromeNumber

if (( $sum == $temp && $count == 2 ))
then
	echo "$temp is a Palindrome Prime Number"
else
	echo "$temp not a Palindrome Prime Number"
fi
