#!/bin/bash

global_counter=1987

compute_diff() {      # return diff between values
	local diff_retval=$(( 2017 - $global_counter ))
	echo $diff_retval   # output '30'
}

diff_counter=$(compute_diff)  # capture output of function
echo "compute_diff returns $diff_counter"
