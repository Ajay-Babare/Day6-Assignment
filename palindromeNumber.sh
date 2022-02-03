 #!/bin/bash/ -x

sum=0
r=0

read -p "Enter any number " n
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

while [ $n -gt 0 ]
do
	r=$(($n%10))
	sum=$(($sum*10+$r))
	n=$(($n/10))
 done

getPalindromeNumber
