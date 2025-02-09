#!/bin/bash

echo "Let's create a user"
username=$1
password=$2

useradd -m $username
echo -e "$password\n$password" | sudo passwd "$username"

echo "I am successfully done"

echo "User created : $username"
cat /etc/passwd | grep $username

echo "Now, delete the user"
userdel -r $username

testuser=`cat /etc/passwd | grep $username`

if [[ "$testuser" == '' ]]; then
	echo "User has been deleted successfully"
else
	echo "User still exist"
fi
