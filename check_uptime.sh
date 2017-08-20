#!/bin/bash

minute=$1

case $minute in
1)
load=`uptime|awk '{print $9}'|tr -d ','`
echo "系统当前CUP在1分钟内的负载是: $load"
;;
5)
load=`uptime|awk '{print $10}'|tr -d ','`
echo "系统当前CUP在5分钟内的负载是: $load"
;;
15)
load=`uptime|awk '{print $11}'|tr -d ','`
echo "系统当前CUP在15分钟内的负载是: $load"
;;
*)
echo  "您的操作有误!"
echo  "Useage: sh $0 [1|5|15]"
;;
esac

