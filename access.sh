#!/bin/bash
clear
echo " _______________________________ "
echo "| %     % %    %        %%%%%%  |"
echo "| %%   %% %   %         %    %  |"
echo "| % % % % %  %   %    % %    %  |"
echo "| %  %  % %%%    %    % %    %  |"
echo "| %     % %  %   %    % %    %  |"
echo "| %     % %   %   %  %  %    %  |"
echo "| %     % %    %   %%   %%%%%%  |"
echo "\_______________________________/"
echo ""
 
echo Access Tool!
echo This tool is used to remotly acess my personal computer and run commands.
echo First configure the values in cfg.txt 
sleep 5        #timeout de 7 segundos
clear
echo Creating ssh tuneling...
bash cfg.sh      #faz a ligacao
