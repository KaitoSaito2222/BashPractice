#!/bin/bash
    read -p "Enter a file or directory name: " name
    if [ -f "$name" ]; then
        echo "$name is a regular file."
    elif [ -d "$name" ]; then
        echo "$name is a directory."
    else
        echo "$name is neither a regular file nor a directory."
    fi
