#!/bin/bash

let result=$1+$2;
echo "The result of adding two numbers $1 and $2 is $result"
if [ $result -eq 30 ]; then
   echo "You successfully entered value which gives sum 30" 
else
   echo  "Try to enter two numbers which give sum ,your sum was $result"
fi
exit 0