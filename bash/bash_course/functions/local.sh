#!/bin/bash

my_counter=5

show_local_counter() {
	local my_counter=3
	#my_counter=3 # omitted local keyword
	echo "local variable: $my_counter"
}

show_local_counter

echo "file-level variable: $my_counter"
