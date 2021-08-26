#!/bin/bash

read -p "Enter your name : " name
read -s -p  "ENter your Passcode : " Passcode

echo -e "Welcome to the terminal: This is $name \n my passcode is  $passcode : "
read -n1 -p "Press any key to continue"
exit 0
