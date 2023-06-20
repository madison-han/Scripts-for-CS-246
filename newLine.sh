#!/bin/bash

read -p "Enter input: " line
read -p "Enter file name: " file_name

# Loop through each character in the input
for (( i = 0; i < ${#line}; i++ )); do
    char="${line:i:1}"

    # Check if the character is '\n'
    if [ "$char" = "\\" ] && [ "${line:i+1:1}" = "n" ]; then
        echo n "" >> "$file_name"  # Add a newline to the file
        ((i++))  # Skip the next character 'n'
    else
        echo -n "$char" >> "$file_name"  # Append the character to the file without a newline
    fi
done

