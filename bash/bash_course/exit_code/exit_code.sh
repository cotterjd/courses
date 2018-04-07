#!/bin/bash

my_func() {  # max exit status is 255 and min is 0
	return $1
}
# function exist status is stored in $? by default

my_func 0
(( $? != 0 )) && { echo "1:Error"; } # heck exit code method 1

if ! my_func 0 ; then echo "2:Error"; fi # check exit code method 2

my_func 1
(( $? != 0 )) && { echo "3:Error"; } # heck exit code method 1

if ! my_func 1 ; then echo "4:Error"; fi # check exit code method 2

my_func 255    # max exit code is 255
echo "5:my_func 255 return $?" 

my_func 257    # exit code is % 256 
echo "6:my_func 257 return $?"
