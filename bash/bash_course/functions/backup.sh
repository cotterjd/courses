# Do NOT have #!/bin/bash in this first line of your BASH script
# if you plan to load this BASH script into the current BASH
# include it into another BASH script via
# source backup.sh

corp_backup() {
	echo "backing up the corp datacenter"
	for f in "$@"; do
		echo $f    #use 'echo' for demo, not real backup
	done
}

my_backup() {
	echo "copying to second hdd"
	for f in "$@"; do
		echo $f   # use 'echo' for demo, not real copy
  done
}

backup() {
	local cmd=$1; shift  # remove command from file list
	
	case $cmd in 
	longterm)
		corp_backup "$@"   # all filenames without command
		;;
	localtmp)
		my_backup "$@"
		;;
	*)
		echo "Unknown backup destination"
		;;
	esac
}

# on commadn line prompt, enter the following lines to use
# source backup.sh
# backup longterm file1.txt file2.txt
# backup localtmp $(ls -l)
