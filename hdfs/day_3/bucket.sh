#usr/bin/bash

echo "Input Score:"
read score

if [ $score -le 25 ]; then
	echo "You are in Bucket 1"
elif [ $score -le 50 ]; then
	echo "you are in Bucket 2"
elif [ $score -le 75 ]; then
	echo "You are in Bucket 3"
else
	echo "You are in Bucket 4"
fi

