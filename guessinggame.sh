#!/bin/bash

function guess_files {
    local file_count=$(ls -1 | wc -l)  # Count files in the current directory
    while true; do
        echo "Guess how many files are in the current directory:"
        read guess
        
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi

        if (( guess < file_count )); then
            echo "Too low!"
        elif (( guess > file_count )); then
            echo "Too high!"
        else
            echo "Congratulations! You guessed the correct number of files: $file_count."
            break
        fi
    done
}

guess_files
