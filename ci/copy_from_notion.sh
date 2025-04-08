#!/bin/bash
original_dir=$(pwd)

# Change directory to Downloads
cd ~/Downloads

# Find the latest .zip file
latest_zip=$(ls -t1 *.zip | head -n 1)

# Check if a .zip file is found
if [ -z "$latest_zip" ]; then
    echo "No .zip files found in the Downloads directory."
    exit 1
fi

# Unzip the latest .zip file
# Assuming overwrite without prompting (-o), create directories as required (-d)
unzip -o "$latest_zip" -d unzipped_content

# Move into the unzipped directory (assuming it has the same name as the .zip without the extension)
cd unzipped_content

# Check if the "Private and Shared" folder exists
if [ -d "Private & Shared" ]; then
    cd "Private & Shared"
else
    echo "The 'Private & Shared' folder was not found in the unzipped content."
    exit 1
fi

# Find the specific file and move it to the current user's directory from which the script was run
specific_file="Plugin Research df47317a8eb449178020d6bf3dec4b23_all.csv"

# Check if the file exists
if [ -f "$specific_file" ]; then
    # Move it to the script's initial starting directory
    mv "$specific_file" "$original_dir"
    echo "File moved successfully."
else
    echo "File not found in the unzipped content."
fi

cd ../..
rm -r unzipped_content
rm $latest_zip

# Optionally, go back to the original directory
cd "$original_dir"