#!/bin/bash

while [ 1 ]
do
cat << EOF 
    My Command Line Test
    
	Please choose the below options
	1. Sign In
	2. Sign Up
	3. Exit
EOF
read option
if [[ $option == 3 ]]; then
    echo "time to exit"
	exit 99
else
   echo "entered option is: $option"
fi
done
