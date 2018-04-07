#!/bin/bash

for i in $(seq 5); do
	if (($i == 2)); then # ((i = 2)) is the same
		break
	fi
	echo $i
done

#note: (($i ==2)) is the same as ((i == 2))
