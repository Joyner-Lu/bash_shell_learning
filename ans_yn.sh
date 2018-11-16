#!/bin/bash
#Program:
#description
#History:
#2018年11月16日 16点25分 JoynerLu first release.
PATH=$PATH:~/bin
export PATH

read -p 'Please input (Y/N)' yn
[ "${yn}" == "Y" -o "${yn}" == "y" ] && echo "Ok,continue" && exit 0
[ "${yn}" == "N" -o "${yn}" == "n" ] && echo "Oh, interrupt!" && exit 0
echo "I don't know what your choice is" && exit 0
