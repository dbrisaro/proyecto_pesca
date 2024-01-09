#!/bin/bash

# set the parent folder path
parent_folder="/home/daniufundar/Documents/Fundar/pesca"

# move all files from subfolders to parent folder
find "$parent_folder" -mindepth 2 -type f -exec mv -i '{}' "$parent_folder" \;

# delete empty subfolders
find "$parent_folder" -mindepth 1 -depth -type d -empty -exec rmdir {} \;

