#!/bin/bash

#var whit colors 
RED='\033[0;31m'
MANGENTA='\e[95m'
GREEN='\e[92m'
CIAN='\e[96m'
YELLOW='\e[93m'
NC='\033[0m' # No Color
clear #clear output





#OPTION 1 AND 3
#List devices stored in "options" dir
select_device() {
	cd options
	base=0
	commands=$(ls -A)
	echo -e "${YELLOW}Select the device you want to connect:"
	for file in $commands; do
		echo -e "${CIAN}[$base] | ${GREEN}$file"
		base=$(($base+1))
	done

	echo "Select one option:"
	read device		#user input 	


	#select the option choosed
	local base_2=0
	for file in $commands; do 
		if [[ $base_2 == $device ]]; then
			selected = $file
			break
		fi
		base_2=$(($base_2+1))
	done
}


#OPTION 1
#connect to a stored device
conect() {
	source $file.sh
	echo Importing "$file" data ...
	sleep 1
	echo Connecting ...
	sleep 1
	ssh $username@$ip
}


#OPTION 2
#add a new device
new_device() {
	cd options
	echo Choose your file name:
	read file_name
	echo Enter the device Username:
	read username
	echo Enter the device IP:
	read IP
	echo Enter the device passowrd:
	read password

	echo Creating the file...
	touch $file_name
	echo -e Username=$username >> $file_name
	echo -e IP=$IP >> $file_name
	echo -e Password=$password >> $file_name

}


#menu
menu() {

	#normal menu	
	echo -e ${RED} "Made By "
	echo -e " ${CIAN} _______________________________ "
	echo -e " /                               \ "
	echo -e " ${CIAN}|${GREEN} %     % %    %        %%%%%% ${CIAN} |${NC}"
	echo -e " ${CIAN}|${GREEN} %%   %% %   %         %    % ${CIAN} |${NC}"
	echo -e " ${CIAN}|${GREEN} % % % % %  %   %    % %    % ${CIAN} |${NC}"
	echo -e " ${CIAN}|${GREEN} %  %  % %%%    %    % %    % ${CIAN} |${NC}"
	echo -e " ${CIAN}|${GREEN} %     % %  %   %    % %    % ${CIAN} |${NC}"
	echo -e " ${CIAN}|${GREEN} %     % %   %   %  %  %    % ${CIAN} |${NC}"
	echo -e " ${CIAN}|${GREEN} %     % %    %   %%   %%%%%% ${CIAN} |${NC}"
	echo -e " ${CIAN}\_______________________________/${NC}"
	echo -e " "
 
	echo -e ${YELLOW} Access Tool!
	echo -e ${MANGENTA} This tool is used to remotly acess my personal computer and run commands.
	echo -e ${MANGENTA} DONT forget to configure first the values in cfg.txt!
	echo -e ${MANGENTA} To leave the server/machine unse the command "logout"

	#normal menu options
	echo Choose one option:
	echo -e "${CIAN}____________________________________"
	echo -e "${CIAN}|  [1]	|${GREEN} Create a SSH connection ${CIAN} |${NC}"
	echo -e "${CIAN}|  [2]	|${GREEN} Add a new connection ${CIAN}    |${NC}"
	echo -e "${CIAN}|  [3]	|${GREEN} Remove one device ${CIAN}	   |${NC}"
	echo -e "${CIAN}|  [4]	|${GREEN} Exit ${CIAN}			   |${NC}"
	echo -e "${CIAN}|__________________________________|"
	echo Option: && read option

	#LOOP
	#option 1, connect to a device
	if [ $option -eq 1 ]; then
		select_device
		echo $selected
		connect
		sleep 3
		menu

	#option 2, create a new connection
	elif [[ $option -eq 2 ]]; then
		new_device
		sleep 2
		menu

	#option 3, remove a stored device data
	elif [ $option -eq 3 ]; then
		select_device
		echo File: $file
		echo Are you sure you want to delet "$file"? [y/n]
		read confirmation
		if [ $confirmation -eq y ]; then
			rm $file
		fi
		menu

	#option 4,close the tool
	elif [ $options -eq 4 ]; then
		echo -e "${RED} Closing the app..."
		sleep 3
		exit

	#to unknown input or commands
	else
		echo -e "${RED} Unknown command!"
		sleep 2
		menu
	fi
}


menu #call function menu