#!/bin/bash
echo Installing necessary packages...
# install necessary packages
apt-get install openssh-server                           #basic for ssh connections
apt-get install git                                      #install git
apt-get install sshpass                                  #Non-Interactive SSH Login
chmod a+x access.sh                                      #change the permissions
chmod a+x cfg.sh                                         #change the permissions
mkdir options
echo Done!


echo Mounting the server....
read -p "Enter your remote username : " user              # it will be to stablish a connection 
read -p "Enter your remote ip: " hostname                 # it will be to stablish a connection 
ssh-keygen                                                #gen a key to keep on your server, so you dont have to put your password
#you will need to put the password of the remote machine to send the key
ssh-copy-id -i ~/.ssh/id_rsa.pub $user@$hostname          #send the key to your server/remote machine
echo DONE!
echo Now to use this tool you will have to update 
echo the "cfg.sh" file whit your remote machine info       # It shouldnt be necessary put the password, but you souldnt leave it empty
echo Its not necessary put your password, 
echo but you shouldnt leave it empty anyway 

bash access.sh
