menu="A B C Quit"

select choice in $menu; do

	if [[ $choice == Quit ]]; then
		echo Bye
		break
  fi

	# REPLY is a BASH built-in variable for select construct
	echo -ne "You Select $choice at menu item ($REPLY)\n\n"

done
