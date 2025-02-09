#!/bin/bash

<<help
This is the shell
script to create multiple user.
help

echo "Ceeation of User"
read -p "Enter user name :" username
read -p "Enter the password : " password
useradd -m -p "$password" "$username"
echo "User cretaion is successfullu done"

cat /etc/passwd | grep $username
