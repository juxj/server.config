#!/bin/sh
ACTION=$1

TOMCAT_HOME=/usr/local/tomcat

case $ACTION in
	'start')
		echo 'starting tomcat'
        	rm -rf $TOMCAT_HOME/logs/*
		$TOMCAT_HOME/bin/startup.sh
		tail -f $TOMCAT_HOME/logs/catalina.out
		;;
	'stop')
		echo  'stopping tomcat'
		ps aux|grep tomcat | sed '$d' | awk '{print "kill " $2}' | sh
		;;
	'log')
		echo  'show tomcat logs'
		tail -f $TOMCAT_HOME/logs/catalina.out
		;;
    'restart')
        echo 'stoping tomcat'
        ps aux|grep tomcat | awk 'NR==1 {print "kill " $2}' | sh
        echo 'starting tomcat'
    	$TOMCAT_HOME/bin/startup.sh
		tail -f $TOMCAT_HOME/logs/catalina.out
        ;;
	*)
		echo 'usage itomcat.sh start|stop|log'
		;;
esac
