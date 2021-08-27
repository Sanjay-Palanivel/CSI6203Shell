#!/bin/bash

echo " Enter the commission amount you want to enter : "
read commission

if [ $commission -le 200 ]; then
  echo "No bonus dollar is applicable. "
elif [ $commission -le 300 ]; then
  echo " Fifty dollar bonus is applicable. "
else
   echo "One hundred dollar bonus applicable. " 
fi
exit 0