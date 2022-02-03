#!/bin/bash -x

a=256
b=2
read -p "Enter a number : " n

while [ $b -le $a ]
do
        echo "$b"
        b=$(($n*$b))
done

