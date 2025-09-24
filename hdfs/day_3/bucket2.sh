#usr/bin/bash

func () {

if [ $1 -le 25 ]; then
	echo "You are in Bucket 1"
elif [ $1 -le 50 ]; then
	echo "you are in Bucket 2"
elif [ $1 -le 75 ]; then
	echo "You are in Bucket 3"
else
	echo "You are in Bucket 4"
fi

}


read score
func $score
