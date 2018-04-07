#!/bin/bash

for i in $(seq 5); do
	if ((i == 2)); then
		continue  #  skip 2nd iteration
	fi
	echo $i
done
