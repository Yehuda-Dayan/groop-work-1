#!/bin/bash
# call for utility
echo "how can i help you today?"
PS3="choos utility, read or delet"
option=("utility" "read" "delet")
select opt in "${option[@]}"; do
	case $REPLY in
		utility)
			echo "you chose utility"
			./zivs_script_utility.sh
			break
			;;
		read)
			echo "you chose read"
			./readfile.sh
			break
			;;
		delet)
			echo "you chose delet"
			./delet.sh
			break
			;;
		*)
			echo "ilegal choice"
			exit 0
			;;
	esac
done
