#!/bin/bash

# "file" variable holds argument file
file=$1 

while read -r line  #read each line from the file
do
	# in for loop printing "*" of the given length of the integer
	for ((i=1; i<=$line; i++))
	do 
		echo -n "*"
	done
	
	echo

done < $file 

	


