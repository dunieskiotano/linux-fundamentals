#!/bin/bash

DATE=`date` # old way
DATE1=$(date) # new way

echo "Today's date is $DATE"
echo "Today's date is $DATE1"
echo "Today's date is `date`" # => old way
echo "Today's date is $(date)" # => new way
