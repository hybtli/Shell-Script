#!/bin/bash


# i variable will hold how many input entered by user
i=0
# max variable will tell us maximum integer at the end of the program
max=0


echo  "Enter a sequence of numbers followed by 'end' "

while true
do
  
  # We are getting input from the user and adding 1 to "i" after getting each input
  read num
  i=$((i + 1))
  
  # In this condition when user entered "end" then program will break from loop and program execution will be in a loop until user entered "end"
  if [ $num = "end" ]
  then
  	break
  
  # In the second condition when user entered the first integer, maximum value automatically will be the integer that user entered
  elif [ $i -eq 1 ]  
  then
      max=$num
  
  # In last condition when user entered more than one integer then program going to another condition ...
  else
      # In this condition program checks if new entered value is greater than previous assinged maximum value then new entered integer value will be our new maximum 	      	    value	       
      if [ $num -gt $max ]
      then
        max=$num
      fi
  
  fi
    

done

#After breaking loop program will print maximum value of entered integers. If no integer entered, then program will print 0 
echo "Maximum : $max "
	
