#!/bin/bash

for ii in $(seq 3); do  # outer loop
	for jj in a b c; do  #inner loop
		if ((ii == 2)) && [[ $jj == b ]]; then
			continue 2
		elif ((ii ==3)) && [[ $jj == a ]]; then
			continue
		fi
		echo "ii=$ii   jj=$jj"
	done  # inner loop
done  # outer loop
