#!/bin/bash

FILE=$1 
declare -a props;

#For each pair key=value, do...
for k in `grep -v "#" $FILE | sed 's/\(.*\)=.*/\1/'`; do    
    props[$k]=$(grep -v "#" $FILE | grep "$k" | cut -d'=' -f2);      #extract value for the specific key
   
   #echo "property $k = " ${props[$k]}; 

done

export props;
