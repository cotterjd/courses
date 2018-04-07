#!/bin/bash

for i in 1 2 3; do
	echo "a: $i"
done
echo

for i in {1..3}; do
	echo "b: $i"
done
echo

for i in $(seq 3); do #seq <end>
	echo "c: $i"
done
echo

for i in $(seq 2 4); do # seq <start> <end>
	echo "d: $i"
done
echo

for i in $(seq 2 3 9); do # seq <start> <step> <end>
	echo "e: $i"
done
echo

for i in $(ls -l); do # directory listing fo current folder
	echo "f: $i"
done
