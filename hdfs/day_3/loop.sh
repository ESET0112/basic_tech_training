#!usr/bin/bash

read counter
until [ $counter -lt 0 ]
do let counter--
	echo $counter
done
