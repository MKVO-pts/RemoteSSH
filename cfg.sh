#!/bin/bash

# Muda as variaveis conforme o servidor remoto
username="sound"
ip="192.168.1.205"
password=cloud


#dont change this code
warning="You havent config the cfg.sh file"
if [ $username == "" ]; then
	echo $warning
	read -p "Enter your remote username : " username
  
	elif [ $ip == "" ]; then
		echo $warning
		read -p "Enter your remote ip addr: " ip

	elif [ $password == "" ]; then
		echo $warning
		read -p -s "Enter your remote password: " password
fi

#dont change this command
ssh $username@$ip

