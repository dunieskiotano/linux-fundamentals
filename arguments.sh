#!/bin/bash

# Two numbers will be entered in a specific order 
# first number will match argument $1
# second number will match argument $2 

# Let us we type ./arguments.sh 5 7 8
#          5    7    8
result=$(($1 + $2 * $3))
# result = 61

#echo "The result is  61"
 echo "The result is $result"
