#!/bin/bash

#ask for a file, check if exists, if yes - return words, lines and total file size:
read -p "Choose a file " cfi
che=$(ls -l | grep "$cfi")
if [ -n "$che" ];then
	echo "the file content is: "
	cat $cfi
	wcf=$( cat $cfi | wc )
	echo "Total lines, words and chars: $wcf "
	echo "File Size: $(du -sh | awk '{print $1}')"

#search function:
	read -p "Enter a word to search in the file " sea
	if [[ -n $(cat $cfi | grep -w $sea) ]];then
		pos=$(tr -s ' ' '\n' < $cfi | grep -n $sea | cut -d ':' -f1)
		echo "True, Word:$equ is number $pos in the file"
	else
       		echo "No such word in this file "
	fi
else
	echo "No such file in this directory "
fi

