fname=${1:-sample.txt}
cond2=sample2.txt
cond3=sample3.txt

case $fname in
s*pl*1.*)
	echo fname matches pattern
	;;
$cond2 | $cond3)
	echo fname is $fname
	;;
*)
	echo $fname is not recognized
	;;
esac
