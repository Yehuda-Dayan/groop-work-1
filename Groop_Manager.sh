#!/bin/bash
# call for utility
echo "how can i help you today?"
read -p "if you want use the utility tool pleas enter 1, if you want to use the read tool please enter 2, if you want to use the delete tool please enter 3. " x
if [[ $x -lt 1 || $x -gt 3 ]]; then
	echo "please enter a propper answer"
	exit 0
elif [[ $x -eq 1 ]]; then
	echo "great you choose utility"
elif [[ $x -eq 2 ]]; then
	echo "2"
elif [[ $x -eq 3 ]]; then
	echo "3"
fi


