#!/bin/sh

A=`rpm  -qa|grep httpd`
B=`mount |grep sr0`

if [ "$A" = "" ]
then
#echo yes
	if [ "$B" = "" ]
	then
	mount /dev/cdrom /mnt/
	fi

cd /mnt/Packages/

rpm -ivh httpd-2.2.15-29.el6_4.x86_64.rpm  httpd-devel-2.2.15-29.el6_4.x86_64.rpm httpd-tools-2.2.15-29.el6_4.x86_64.rpm httpd-manual-2.2.15-29.el6_4.noarch.rpm apr-1.3.9-5.el6_2.x86_64.rpm apr-util-1.3.9-3.el6_0.1.x86_64.rpm apr-devel-1.3.9-5.el6_2.x86_64.rpm apr-util-ldap-1.3.9-3.el6_0.1.x86_64.rpm apr-util-devel-1.3.9-3.el6_0.1.x86_64.rpm cyrus-sasl-devel-2.1.23-13.el6_3.1.x86_64.rpm openldap-devel-2.4.23-32.el6_4.1.x86_64.rpm expat-devel-2.0.1-11.el6_2.x86_64.rpm 

sleep 5

C=`rpm  -qa|grep httpd`

		if [ "$C" = "" ]
		then 
		echo "安装失败!"
		else
		echo "安装成功！"
		fi
else
#echo no
echo "该应用已经存在!请不要重复安装!"
fi
