#!/usr/bin/env bash
#fizzbuzz stuf

count=1
while [ $count -ne 101 ]
do
    if [ $((count % 15)) -eq 0 ]
    then
	echo "FizzBuzz"
    elif [ $((count % 3)) -eq 0 ]
    then
	echo "Fizz"
    elif [ $((count % 5)) -eq 0 ]
    then
        echo "Buzz"
    else
	echo $count
    fi
    ((count++))
done
