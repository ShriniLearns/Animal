#!/bin/bash

# URL to the output file

# Path to save the downloaded output file
output_directory="/Users/shrinidhigcw/IdeaProjects/Animal/pom.xml"
output_file="$output_directory/file.txt"

# Download the output file using curl
curl -o "$output_file" 

# Verify if the file was downloaded successfully
if [ -f "$output_file" ]; then
  echo "Output file downloaded successfully."
  # Add your desired actions with the downloaded output file here
else
  echo "Error: Failed to download the output file."
fi
