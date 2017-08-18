#!/bin/sh

num=0
total=0

Array=(httpd-2.2.15-29.el6_4.x86_64  httpd-devel-2.2.15-29.el6_4.x86_64 httpd-tools-2.2.15-29.el6_4.x86_64 httpd-manual-2.2.15-29.el6_4.noarch apr-1.3.9-5.el6_2.x86_64 apr-util-1.3.9-3.el6_0.1.x86_64 apr-devel-1.3.9-5.el6_2.x86_64 apr-util-ldap-1.3.9-3.el6_0.1.x86_64 apr-util-devel-1.3.9-3.el6_0.1.x86_64 cyrus-sasl-devel-2.1.23-13.el6_3.1.x86_64 openldap-devel-2.4.23-32.el6_4.1.x86_64 expat-devel-2.0.1-11.el6_2.x86_64)


for i in ${Array[*]}
do
num=`rpm -qa|grep $i|wc -l`
total=`expr $num + $total`
done


if [ $total -eq 0 ]
then
echo "卸载成功!"
else
echo "卸载失败!"
fi
