#!/bin/bash


used=`free -m|sed -n 2p|awk '{print $3}'`
total=`free -m|sed -n 2p|awk '{print $2}'`

percentage=`echo "scale=2;$used/$total"|bc|awk '{printf "%.2f\n",$0}'`


echo "当前内存使用率: $percentage%"


