#!usr/bin/bash

my_array=("abc" "bcd" "cde")
echo "The First element is: ${my_array[0]}"

echo "The array is: ${my_array[@]}"

echo "The length of the array is: ${#my_array[@]}"
