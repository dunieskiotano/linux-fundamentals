#!/bin/bash

# while loop

counter=0
while [ $counter -lt 10 ]
do
echo "$((counter + 1)).Hello"
((counter++))
done

clear
username=dunieski
password=pass
counter=3
while true
do
if [[ $counter -eq 0 ]]; then
echo "Your account has been locked. Call Customer Service at 1(800)234-4567"
break
fi
read -p "Enter username >> " u
read -p "Enter password >> " p

if [[ "$username" == "$u" ]] && [[ "$password" == "$p" ]]; then
echo "$username, you're authenticated"
break
else
echo "Wrong credentials. Try again"
((counter--))
echo "You have $counter attempts left"
fi
done

# while => there is a condition that needs to true to enter the loop
# while true => the loop will be executed at least once (a true condition is not required to enter the loop)
