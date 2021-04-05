#!/bin/bash

#read -p "Enter a decimal value >> " decimal

#tax=$(echo "scale=3; $decimal*0.07" | bc -l)
#echo $tax
clear
functionCounter=0
total=0
while true
do
accumulate(){
((functionCounter++))
echo $((total += $1))
}

read -p "Enter a number >> " num
accumulate $num
read -p "Do you want to enter another number? [1 for Yes or 2 for No] >> " choice
if [ $choice -eq 2 ]; then
break
fi
done

printf "\n\nTotal: $total\nFunction call: $functionCounter\n\n"





