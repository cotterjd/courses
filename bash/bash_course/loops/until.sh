#!/bin/bash

i=0 #initialize counter
until ((i >= 3)) # test condition must be false to continue loop
do 
	echo $i
	((++i)) # MUST-HAVE increment to terminate the loop
done

#note: 'until (( i>= 3))' is the same as 'while (( i < 3))'
