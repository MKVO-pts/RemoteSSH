#!/bin/bash

#var whit colors 
RED='\033[0;31m'
MANGENTA='\e[95m'
GREEN='\e[92m'
CIAN='\e[96m'
YELLOW='\e[93m'
NC='\033[0m' # No Color
clear #clear output

echo -e ${RED} "Made By "
echo -e " ${CIAN} _______________________________ "
echo " /                               \ "
echo -e " ${CIAN}|${GREEN} %     % %    %        %%%%%% ${CIAN} |${NC}"
echo -e " ${CIAN}|${GREEN} %%   %% %   %         %    % ${CIAN} |${NC}"
echo -e " ${CIAN}|${GREEN} % % % % %  %   %    % %    % ${CIAN} |${NC}"
echo -e " ${CIAN}|${GREEN} %  %  % %%%    %    % %    % ${CIAN} |${NC}"
echo -e " ${CIAN}|${GREEN} %     % %  %   %    % %    % ${CIAN} |${NC}"
echo -e " ${CIAN}|${GREEN} %     % %   %   %  %  %    % ${CIAN} |${NC}"
echo -e " ${CIAN}|${GREEN} %     % %    %   %%   %%%%%% ${CIAN} |${NC}"
echo -e " ${CIAN}\_______________________________/${NC}"
echo ""
 
echo -e ${YELLOW} Access Tool!
echo -e ${MANGENTA} This tool is used to remotly acess my personal computer and run commands.
echo -e ${MANGENTA} DONT forget to configure first the values in cfg.txt!
echo -e ${MANGENTA} To leave the server/machine unse the command "logout"
sleep 3        #timeout de 5 segundos
clear


#menu
echo Choose one option:
echo -e "${CIAN}____________________________________"
echo -e "${CIAN}|  [1]	|${GREEN} Create a SSH connection ${CIAN} |${NC}"
echo -e "${CIAN}|  [2]	|${GREEN} Add a new connection ${CIAN}    |${NC}"
echo -e "${CIAN}|  [3]	|${GREEN} Remove one device ${CIAN}	   |${NC}"
echo -e "${CIAN}|  [4]	|${GREEN} Exit ${CIAN}			   |${NC}"
echo -e "${CIAN}|__________________________________|"


echo Option: 
read option
clear


#List devices stored in "options" file
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
	base_2=0
	for file in $commands; do 
		if [[] $base_2 -eq $device]; then
						
			base_2=$(($base_2+1))
			return $file
			break
		fi
	done
}



#connect to a stored device
conect() {
	echo grub-mklayout	
}






#add a new device




















if [ $option -eq 1 ]; then
	select_device
	echo -e "${YELLOW}Select one device" && read selected
	echo -e "${GREEN} Creating ssh tuneling... ${NC}"


elif [[ $option=2 ]]; then
	echo Not

elif [[ $option==3 ]]; then
	select_device
	

elif [ $options=4 ]; then
	echo -e "${RED} Closing the app..."
	sleep 3
	exit
elif [ $options=3 ]; then
	echo ""

else
	echo "${RED} Unknown command"

fi


