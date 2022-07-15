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
echo "entered option is: $option"
done
