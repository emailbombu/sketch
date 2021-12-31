#!/bin/bash

#################################
#####ByProduct of DemonWare######
########NoAfflilition ;*( #######
#################################




echo '
#########
#########
###            ########
######        ###   ####                             #
######       ####    ####                           ##
###        @@#############                        #####
######### #################                     ########
#################      #####                 ############
                        #####                 ####
                         #####              ####
                          ############    #####
                          ###################
                          ###################
'
MACHINE_TYPE=`uname -m`


check() {
echo "$MACHINE_TYPE"
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
    sudo dpkg --add-architecture i386
    sudo dpkg --add-architecture armhf
    sudo dpkg --add-architecture armel
    sudo dpkg --add-architecture arm64
else
    sudo dpkg --add-architecture armhf
    sudo dpkg --add-architecture arm64
fi
}

run() {
x-terminal-emulator --tab --title='frontend' -e "bash -c 'mkdir work && cd work && git clone https://github.com/emailbombu/sketch.git'";
}

drive() {
if [ ${MACHINE_TYPE} == 'arm64' ];
    elif [ ${MACHINE_TYPE} == 'aarch64' ];
        elif [ ${MACHINE_TYPE} == 'armhf' ];
            elif [ ${MACHINE_TYPE} == 'armel' ];
            then
                if [[ ! -f /dev/sda ]];
                    elif [[ ! -f /dev/sdd ]];
                        elif [[ ! -f /dev/sdc ]];      
then
    echo "<file> does not exist on your filesystem."
else
    echo "Device Exists"
                fi
fi

if [ -f "$blop" ]; then
    echo "$blop exists."
else 
mkdir ~/work
cd ~/work
fi
}



check
run
drive