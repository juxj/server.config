#!/bin/sh
ACTION=$1

TOMCAT_HOME=/usr/local/tomcat

case $ACTION in
	'nginx') 
		 echo 'nginx.yanchangba.com' 
		 ssh root@112.124.122.158
		 ;;
	'app1') 
		 echo 'app1.yanchangba.com' 
		 ssh root@112.124.18.26
		 ;;
	'app2') 
		 echo 'app2.yanchangba.com' 
		 ssh root@112.124.4.242
		 ;;
	'mdb') 
		 echo 'mdb.yanchangba.com' 
		 ssh root@112.124.23.115
		 ;;
	'sdb1') 
		 echo 'sdb1.yanchangba.com' 
		 ssh root@112.124.25.229
		 ;;
	'redis') 
		 echo 'redis.yanchangba.com' 
		 ssh root@112.124.22.190
		 ;;
	'media') 
		 echo 'media.yanchangba.com' 
		 ssh root@121.40.140.154
		 ;;
	'codec') 
		 echo 'codec.yanchangba.com' 
		 ssh root@121.199.18.194
		 ;;
	'chat') 
		 echo 'chat.yanchangba.com' 
		 ssh root@112.124.26.151
		 ;;
	'test')
		echo 'test.yanchang8.cn'
		ssh root@115.29.199.78
		;;
	'web')
		echo 'www.yanchang8.cn'
		ssh root@121.199.29.60
		;;
	*)
		echo 'i.ali.sh codec|app1|app2|mdb|sdb1|redis|media|chat|nginx'
esac
