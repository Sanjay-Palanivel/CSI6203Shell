#!/bin/bash

read -p "What is your name : " name
[ $name = 'Sanjay' ] && echo "Hello Sanjay" &&  exit 0
echo "Your name is not Sanjay, it is $name"; exit 1

