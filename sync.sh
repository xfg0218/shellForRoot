#!/bin/sh
# 此脚本主要scp使用
# 1、第一个参数传需要在什么机器上执行,如果包含本机器请使用all不包含使用other
# 2、第二个参数是执行的什么命令 


DIRNAME=`dirname "$0"`
localhome=`cd "$DIRNAME"; pwd`
ipslist=$localhome/iplist
source $ipslist

iplistname=$1

for ip in ${!iplistname}
 do
    echo "==================sync $1 for $ip start  =================="
    scp -r $2 $username@$ip:$3
    echo -e "==================sync $1 for $ip end  ==================\n"
done


