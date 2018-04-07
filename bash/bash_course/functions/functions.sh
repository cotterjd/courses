#!/bin/bash

show_arguments() {  # define a functin 
		echo "1: $@"
		echo "2: $*"
		echo "3: $1"
		echo "4: $2"
		echo "5: $1 $2"
}

show_arguments a "1 2 3" b # invoke a function with 3 args
echo
show_arguments a          # invotke same function with 1 args
