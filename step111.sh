#!/bin/bash

function sign_up()
{
   echo "sign_up function"
   while [ 1 ] 
   do
   echo "Please enter password for User to be created in OIM: "
	echo "******Please Note: Password should be at least 6 characters long with one digit and one Upper case Alphabet******"
	read user_passwd
	#regex="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)\S{6,}$"
	echo ${#user_passwd}
	#echo $regex
	if [[ ${#user_passwd} -ge 6 && "$user_passwd" == *[A-Z]* && "$user_passwd" == *[a-z]* && "$user_passwd" == *[0-9]* && "$user_passwd" == *[?!@$\%^\&*-]* ]]; then
		echo "Password Matches the criteria"
		break 1
	else
		echo "Password criteria: Password should be at least 6 characters long with one digit and one Upper case Alphabet"
		echo "Password does not Match the criteria, exiting..."
	fi
    done
		

}
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
elif [[ $option == 2 ]]; then
    sign_up
else
   echo "entered option is: $option"
fi
done
