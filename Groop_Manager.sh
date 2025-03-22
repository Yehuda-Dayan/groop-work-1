#!/bin/bash
# call for utility
echo "how can i help you today?"
PS3="choose utility, read or delete "
option=("utility" "read" "delete")
select opt in "${option[@]}"; do
	case $REPLY in
		utility)
			echo "you chose utility"
			./utility.sh
			break
			;;
		read)
			echo "you chose read"
			./readfile.sh
			break
			;;
		delete)
			echo "you chose delete"
			./delete.sh
			break
			;;
		*)
			echo "ilegal choice"
			exit 0
			;;
	esac
done
