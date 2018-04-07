#!/bin/bash

echo "script argument" $1

func() {
	local p1=$1
	echo "local argument" p1
	echo "$p1"
}

func bar
