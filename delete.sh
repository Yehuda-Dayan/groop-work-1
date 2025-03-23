#!/bin/bash
#for every delete operation - ask if sure

read -p "What do you want to delete? write path" target

if [ -e "$target" ]; then #-f means that we force it
  read -p "Are you sure you want to delete?  y/n" answer
    if [ $answer == "y" ]; then
        if [ -d "$target" ]; then 
            rmdir "$target"
            echo "Okay, directory deleted"
        elif [ -f "$target" ]; then
            rm "$target"
            echo "okay, file deleted"
        else
            echo "target is neither a file nor a directory"
        fi
else 
        echo "Okay, I won't delete this"
fi
