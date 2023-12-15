#!/bin/bash

echo -e "Checking if the script is running as root!"

# Check if script is running as root user
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use 'sudo' or run as root."
    exit 1
fi

echo -e "\nUpdating your system, please wait\n"
sleep 1

# Update system
apt update

# Install pip
apt install python3-pip -y

echo -e "\nInstalling required dependencies, please wait!\n"
sleep 1

# Install requirements to run the script
pip install python-telegram-bot
pip install discord.py

echo -e "\nDone, run the 'main.py' file now!\n"
sleep 2
