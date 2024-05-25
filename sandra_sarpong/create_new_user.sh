#!/bin/bash

# Creating a user variable
NEW_USER="newusername" # Replace "newusername" with the desired username

# Create new user who may require sudo privileges
sudo useradd -m "$NEW_USER"

# Set password for the new user 
echo "$NEW_USER:password" | sudo chpasswd # Replace "password" with the desired password

# Output the created user details to confirm user have been created
sudo id "$NEW_USER"
