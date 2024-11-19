#This file was written by copilot using the following prompt:
#write a bash script that searches in ./src/students/ and ./src/teachers/, fines html files and copies them to ./students and ./teachers, respectively. overwrite existing html files with same name
#revise script to delete html files in ./src/students/ and ./src/teachers/ when done
#!/bin/bash

# execute from CLI using command: bash copy_html_files.sh

# Copy HTML files from ./src/students/ to ./students
for file in ./src/students/*.html; 
do
    cp "$file" ./students/
    rm "$file"
done

# Copy HTML files from ./src/teachers/ to ./teachers and delete them from the source directory
for file in ./src/teachers/*.html; 
do
    cp "$file" ./teachers/
    rm "$file"
done