#!/bin/bash

for (( i = 1; i <= 5; i++ )); do
	echo $i
done

echo 

for (( i = 1, j=10; i <=3 && j<=20; i++, j+=10)); do
	echo $i $j
done
