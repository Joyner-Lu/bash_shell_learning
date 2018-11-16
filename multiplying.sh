#!/bin/bash
# Program:
# User inputs 2 integer numbers; program will cross these two numbers.
# History:
# 2015/07/16 VBird First release
PATH=$PATH:~/bin
export PATH

echo -e "You should input 2 numbers,I will multiplying then! \n"
read -p "first number:" firstnu
read -p "second number:" secnu
total=$((${firstnu}*${secnu}))
echo -e "\n The result os ${first} x ${secnu} is ===> ${total}"
