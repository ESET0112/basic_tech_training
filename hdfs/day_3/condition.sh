#!usr/bin/bash

echo "What is your name?"
read name

echo "What is your age?"
read age

if [ $age -ge 18 ]; then
	echo "Hi $name, You can vote"
else
	echo "Hi $name, you can't vote"
fi
