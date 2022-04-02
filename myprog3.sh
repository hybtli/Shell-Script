#!/bin/bash


#currDir variable is created for holding directory path that we want to check files in there

if [ $# -eq 1 ]  #checking if directory is given as a argument then our new directory path is assinged to "currDir" variable 
then 
    currDir=$1
else		# if there is no any given directory path then "currDirr" will hold current directory which you are in
    currDir="$PWD"
fi


count=0 # "count" variable is created for to hold number of the zero length files in directory


# This condition checks avaiablity of directory. If it is valid then program will checks the file in directory if not will print "does not exist " message and exit
if [ -d $currDir ]
then
	for i in $currDir/*  #checking all files in directory
	do
		
		if [ -s $i ] # If file has some lengths then program continue its checking
		then 
			continue
		else 
			rm $i # deleting zero length file from directory
			((count++)) # and adding 1 to "count" variable
			
		fi
	done
	# After checking program will print how many zero-length files are removed from the directory
	echo "$count zero-length files are removed from the directory: $currDir" 
	
else 
	echo "Directory does not exist"
	exit 1
fi


