#!/bin/bash

#Below is the example of user defined variable
hero="rancho"
villan="virus"
echo "Hero of three idiots is $hero"
echo "Villan of three idiots is $villan"


echo "Current logged in user $USER"

read -p "Full name of rancho" fullname
echo "Rancho's full name is $fullname"

# ./first.sh Dev Test Prod"

echo "Script name : $0"
echo "Fisrt argument : $1"
echo "Second argument : $2"
echo "Total argument : $@"
