#!/bin/bash

# Variables
USER_NAME="newusername" # Ensure this matches the username from the previous script
DIR_NAME="/home/$USER_NAME/my_docs"

# Create directory
sudo mkdir -p "$DIR_NAME"

# Create files with different extensions
sudo touch "$DIR_NAME/index.html"
sudo touch "$DIR_NAME/styles.css"
sudo touch "$DIR_NAME/scripts.js"

# Set ownership to the new user
sudo chown "$USER_NAME":"$USER_NAME" "$DIR_NAME" -R

# List the directory content and their permissions
sudo ls -l "$DIR_NAME"

