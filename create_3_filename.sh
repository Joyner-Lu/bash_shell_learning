#!/bin/bash
#Program:
#Program creates three files,which named by user's input and date command.
#History:
#2018年11月16日 15点03分 JoynerLu First release
PATH=$PATH:~/bin
export PATH

#1.让使用者输入档案名称，并取得filesuser这个参数
echo -e "I will use 'touch' command to create 3 files. "
read -p "Please input your filename:" fileuser


#2.为了避免使用者随意按enter，利用参数功能分析档案名是否有设定
filename=${fileuser:-"filename"}

#3.开始利用data指令来取得所需要的档案名称
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=${date+%Y%m%d} 
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

#4.建立
touch "${file1}"
touch "${file2}"
touch "${file3}"
