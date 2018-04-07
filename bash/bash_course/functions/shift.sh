#!/bin/bash

show_arguments() {
	local p1=$1
	local p2=$2

	printf "p1=%s   ps=\"%s\"\n" "$p1" "$p2"
}

show_arguments_with_shift() {
		local p1=$1 # "a" "1 2 3" "b"
		shift        # "1 2 3" "b"t
		local p2=$1 # assign "1 2 3" to local variable p2

		printf "p1=%s   p2=\"%s\"\n"  "$p1"  "$p2"

}

show_arguments a "1 2 3" b

show_arguments_with_shift a "1 2 3" b
