#!/bin/sh
# 第一个参数传需要在什么机器上执行,如果包含本机器请使用all不包含使用other
# 第一个参数是执行的什么命令

DIRNAME=`dirname "$0"`
localhome=`cd "$DIRNAME"; pwd`
ipslist=$localhome/iplist
source $ipslist

iplistname=$1

for ip in ${!iplistname}
 do
    echo "================== exec $2 for $ip start =================="
    ssh $ip -C "$2"
    echo -e "================== exec $2 for $ip end  ==================\n"
done


