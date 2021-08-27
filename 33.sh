#!/bin/bash

passcode=12345
read -p "Enter your user name : " name
read -s -p "Enter your accesscode :" accesscode
test "$name" = 'Sanjay' && "$accesscode"= "$passcode"  && echo "Entry Granted" && exit 0
echo "Entry Denied"; exit 1
