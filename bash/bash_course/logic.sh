fname=${1:-sample.txt}

# AND list

[[ -e $fname ]] && echo "1:File $fname exists"

if [[ -e $fname ]]; then echo "2:File $fname exists:"; fi

[[ -e $fname ]] && { echo "3:File $fname exists"; echo "3:Bye"; }

if [[ -e $fname ]]; then echo "4:File $fname exists"; echo "4:Bye"; fi

# OR list

[[ -e $fname ]] || echo "5:File $fname does not exist"

if [[ -e $fname ]]; then : ; else echo "6:File $fname does not exist"; fi

# AND - OR list

[[ -e $fname ]] && echo "7:File $fname exists" || echo "7:File $fname does not exist"

[[ -e $fname ]] && {
	echo "8:File $fname exists"
	echo "8:Bye"
} || {
	echo "8:File $fname does not exist"
	echo "8:Bye now"
}
