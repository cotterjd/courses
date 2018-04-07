#!/bin/bash

i=0 # initialize a counter
while ((i < 3)); do # ((..)) is recommended for arithmetic comparison
	echo "a: $i"
	((i++)) # or ((++i)) MUST-HAVE to terminate the loop
done
echo

i=0
while ((i< 8)); do
	echo "b: $i"
	((i += 3))
done
