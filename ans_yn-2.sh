
#!/bin/bash
#Program:
#description
#History:
#2018年11月16日 16点25分 JoynerLu first release.
PATH=$PATH:~/bin
export PATH

read -p 'Please input (Y/N)' yn

if [ "${yn}" == "Y" ] || [ "${yn}" == "y" ]; then
	echo "OK, contine"
	exit 0
fi
if [ "${yn}" == "N" ] || [ " ${yn}" == "n" ]; then 
		echo "Oh, interrupt!"
fi


