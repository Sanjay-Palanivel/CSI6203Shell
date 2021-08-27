#!/bin/bash

read -p "The name of the directory you want to create in  the current working directory: " name

if [ -d $dirname ]; then
  echo "The directory name you enter $name is already exist. "
else
   mkdir $name;
   echo " The $name directory has been created "
fi
exit 0