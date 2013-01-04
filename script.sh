#!/bin/sh
echo "1= Change Password"
echo "2= See the disk space"
echo "3= Login to other box using ssh"
echo "4= Show all Service running"
echo "5= Show all ports opened"
echo "6= Show all java apps running"
echo "7= Facility to kill a  app"
echo "8= exit "
echo "9= invalid number"

echo "Enter the Option. "
read OPT

case $OPT in
  1)passwd <username>;;

	2)df -h ;;

	3)ssh -l <username> <boxname> <commands>;;

	4)service --status-all;;

	5)netstat -a | egrep 'Proto|LISTEN';;

	6)ps -aux |grep java;;

	7)kill -9 apppid ;;

	8)exit ;;
	
	9)echo "INVALID NUMBER!" ;;
esac
