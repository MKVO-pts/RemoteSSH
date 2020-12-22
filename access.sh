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

sleep 5        #timeout de 5 segundos
clear
echo -e ${GREEN} Creating ssh tuneling... ${NC}
bash cfg.sh      #run other file
