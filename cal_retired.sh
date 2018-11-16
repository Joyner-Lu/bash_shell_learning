
#!/bin/bash 
# Program: 
# You input your demobilization date, I calculate how many days before you demobilize. 
# History: 
# 2015/07/16 VBird First release 
echo "This program will try to calculate :" 
echo "How many days before your demobilization date..." 
read -p "Please input your demobilization date (YYYYMMDD ex>20150716): " date2 # 2.测试一下，这个输入的内容是否正确？利用正规表示法啰～ 
date_d=$(echo ${date2} |grep '[0-9]\{8\}')    #看看是否有八个数字 
if [ "${date_d}" == "" ];
	echo "You input the wrong date format...." 
	exit 1 
fi # 3.开始计算日期啰～ 
declare -i date_dem=$(date --date="${date2}" +%s)       #退伍日期秒数 
declare -i date_now=$(date +%s)                         #现在日期秒数 
declare -i date_total_s=$((${date_dem}-${date_now}))    #剩余秒数统计 
declare -i date_d=$(( ${date_total_s}/60/60/24))         #转为日数 
if [ "${date_total_s}" -lt "0" ]; then                  #判断是否已退伍 
	echo "You had been demobilization before: " $(( -1*${date_d})) " ago" 
else 
	declare -i date_h=$(($((${date_total_s}-${date_d}*60*60*24))/60/60)) 
	echo "You will demobilize after ${date_d} days and ${date_h} hours." 
fi

