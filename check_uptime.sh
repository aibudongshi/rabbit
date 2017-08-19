#!/bin/bash


load=`uptime|awk '{print $9}'|tr -d ','`

echo "系统当前CUP在1分钟内的负载是: $load"

