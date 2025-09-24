#!usr/bin/bash

fun_name () {
	local x=$1
	local y=$2
	result=$(( x + y ))
	echo $result
}

a=3;
b=4;

echo "the sum of two numbers is: "

fun_name $a $b
