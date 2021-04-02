#!/bin/bash

array=(2 5 7 2 8 7) # index => length - 1 

for number in ${array[@]}
do
echo $number
done

echo "Element # 6 is ${array[5]}"

toppings=(Pepperoni Ham Tomatoes Onions Jalapeno Cheese Red_Pepper Black_Olives)
prices=(0.50 0.35 0.40 0.35 0.55 0.60 0.75 0.80) 
echo "These are the toppings available: "
echo "---------------------"
counter=1
for topping in ${toppings[@]}
do
echo "$counter.$topping"
((counter++))
done
echo "----------------------"
read -p "Choose one toppings [1 - 8] >> " selection

case $selection in
1) echo "${toppings[0]} - \$${prices[0]}, great selection";;
2) echo "${toppings[1]}, great selection";;
3) echo "${toppings[2]}, great selection";;
esac
