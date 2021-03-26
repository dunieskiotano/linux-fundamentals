#!/bin/bash


outerLoopCounter=0
innerLoopCounter=0

# Outer Loop
for team in $(seq 3)
do
echo "----------"
echo "Team-$team:"
echo "----------"
((outerLoopCounter++))
# Inner Loop
for member in $(seq 3)
do
echo "member-$member"
((innerLoopCounter++))
done # end of inner loop
done # end of outer loop
echo ""
echo "Outer Loop Counter: $outerLoopCounter"
echo "Inner Loop Counter: $innerLoopCounter"


outerLoopCounter++ => outerLoopCounter = outerLoopCounter + 1 => outerLoopCounter+=1
