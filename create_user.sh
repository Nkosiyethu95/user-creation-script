#!/bin/bash

# Prompt for a username
read -p "Enter the new username: " username

# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists!"
    exit 1
fi

# Create the user with a home directory
sudo useradd -m -s /bin/bash "$username"

# Check if the user was created successfully
if [ $? -ne 0 ]; then
    echo "Failed to create user '$username'."
    exit 1
fi

# Prompt for a password
read -s -p "Enter the password for $username: " password
echo
read -s -p "Confirm the password: " password_confirm
echo

# Check if passwords match
if [ "$password" != "$password_confirm" ]; then
    echo "Passwords do not match!"
    exit 1
fi

# Set the password for the user
echo "$username:$password" | sudo chpasswd

# Ensure the password was set successfully
if [ $? -eq 0 ]; then
    echo "User '$username' has been created successfully with the given password."
else
    echo "Failed to set password for '$username'."
    exit 1
fi

