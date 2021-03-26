#!/bin/bash

# loops through numbers 1-20
for number in $(seq 20)
do
echo $number
done

#1
#2
#3
#...
#20


# EXTREMELY INEFECTIVE
for term in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 Carlos Luis Gonzalo Roberto
do
echo $term
done

clear
read -p "How many users do you want to enter >> " number_of_users
if [[ $number_of_users -gt 5 ]]; then
echo "You are not allowed to create $number_of_users users. You can only create 5."
else
for number in $(seq $number_of_users)
do
read -p "Enter username for user $number >> " username
sudo useradd $username
echo "User $username successfully added"
done
printf "\n"
echo "---------------------------------------"
echo "      USERS RECENTLY ADDED             "
echo "---------------------------------------"
tail -$number_of_users ~/Desktop/users 
echo "---------------------------------------"
printf "\n"
fi
