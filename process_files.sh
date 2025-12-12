#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <folder_path>"
    exit 1
fi

input_folder="$1"

if [ ! -d "$input_folder" ]; then
    echo "Error: '$input_folder' is not a valid directory"
    exit 1
fi

parent_dir=$(dirname "$input_folder")
folder_name=$(basename "$input_folder")
output_folder="$parent_dir/${folder_name}_txt_files"

mkdir -p "$output_folder"

for file in "$input_folder"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp "$file" "$output_folder/${filename}.txt"
        echo "Created: $output_folder/${filename}.txt"
    fi
done

echo "Processing complete. Files created in: $output_folder"