#!/bin/bash

for i in $(seq 5); do  #outer loop
	for j in {a..c}; do  #inner loop
		if ((i ==4 )) && [[ $j == b ]]; then
			break 2  # terminate both inner and outer loop
		elif ((i ==3)) && [[ $j == a ]]; then
			break    # terminate only inner loop
		fi
		
		echo "i=$i   j=$j"
	done  # inner loop
done  # outer loop	
