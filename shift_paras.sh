#!/bin/bash
#Program:
# description
#History:
#2018年11月16日 16点41分 joyner lu first realse.

echo "Total parameter number is ==> $#" 
echo "Your whole parameter is ==> ' $@'" 
shift    #进行第一次『一个变数的shift 』 
echo "Total parameter number is ==> $#" 
echo "Your whole parameter is ==> '$@'" 
shift 3 #进行第二次『三个变数的shift 』 
echo "Total parameter number is ==> $#" 
echo "Your whole parameter is ==> '$@'"
