#!/bin/bash
clear
read -r -p  "Enter the PATTERN to search: " pattern
if [[ $(grep -L "$pattern" access_log.txt) ]]; then
     echo $'\n NO MATCHES FOUND.'
     exit 1
fi
PS3=$'\nChoose an OPTION for your search:'
options=(Whole-word-match Any-match-on-the-line Inverted-match Exit)
select menu in "${options[@]}";
do
echo "You have picked the option $menu ($REPLY)"
if [[ $menu == "Whole-word-match" ]]; then
   echo $'The SEARCH RESULTS of $menu is : \n' | tee -a "output.txt"  
   echo $'No. of MATCHES = ' | tee -a "output.txt"
   grep -w -i -c "$pattern" access_log.txt | tee -a "output.txt"
   echo $'\nSEARCH DETAILS : \n' | tee -a "output.txt"
   grep -n -w -i "$pattern" access_log.txt | tee -a "output.txt"
elif [[ $menu == "Any-match-on-the-line" ]]; then
   echo $'\n\nThe SEARCH RESULTS of $menu is : \n' | tee -a "output.txt"  
   echo $'No. of MATCHES = ' | tee -a "output.txt"
   grep -w -i -c "$pattern" access_log.txt | tee -a "output.txt"
   echo $'\nSEARCH DETAILS : \n' | tee -a "output.txt"
   grep -n -w -i "$pattern" access_log.txt | tee -a "output.txt"
elif [[ $menu == "Inverted-match" ]]; then
   echo $'\n\nThe SEARCH RESULTS of $menu is : \n' | tee -a "output.txt"  
   echo $'No. of MATCHES = ' | tee -a "output.txt"
   grep -i -w -v -c "$pattern" access_log.txt | tee -a "output.txt"
   echo $'\nSEARCH DETAILS : \n' | tee -a "output.txt"
   grep -n -w -i -v "$pattern" access_log.txt | tee -a "output.txt"
else
   break
fi
done
exit 0