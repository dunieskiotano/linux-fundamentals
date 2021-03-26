#!/bin/bash

clear
# functions
add(){
sum=$(($1 + $2))
echo "----------------------------"
echo "        ADDITION            "
echo "----------------------------"
echo "The sum of $1 and $2 is $sum"
}

subtract(){
sub=$(($1 - $2))
echo "------------------------------------"
echo "             SUBTRACTION            "
echo "------------------------------------"
echo "The subtraction of $1 and $2 is $sub"
}

multiply(){
mul=$(($1 * $2))
echo "--------------------------------------"
echo "             MULTIPLICATION           "
echo "--------------------------------------"
echo "The multiplicaiton of $1 by $2 is $mul"
}

divide(){
echo "--------------------------------"
echo "            DIVISION             "
echo "--------------------------------"
div=`echo "scale=2; $1/$2" | bc`
echo "The division of $1 by $2 is $div"
}


read -p "Enter a number >> " num1
read -p "Enter another number >> " num2

while true
do
echo "---- AVAILABLE OPERATIONS ----"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
read -p "Choose which operation do you want us to perform for you [1-4] >> " operation

#case statement... similar if-elif-else
case $operation in
1)
add $num1 $num2;;
2)
subtract $num1 $num2;;
3)
multiply $num1 $num2;;
4)
divide $num1 $num2;;
*)
echo "Invalid operation";;
esac
read -p "Do you want us to do another operation? [1 for Yes or 2 for No] >> " choice
if [[ $choice -eq 2 ]]; then
echo "Thanks for using our humble calculator. Good bye"
break
fi
done


