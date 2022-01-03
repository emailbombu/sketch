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
FILE=~/work
BOBO=~/work/sketch
YUM=/etc/sources.list.bak

check() {
echo "$MACHINE_TYPE"
echo "Would you like to add/remove architectures?"
read archz
if [ $archz = 'yes' ]; then
        if [ $MACHINE_TYPE = 'x86_64' ]; then
            sudo dpkg --add-architecture i386
            sudo dpkg --remove-architecture armhf
            sudo dpkg --remove-architecture armel
            sudo dpkg --remove-architecture arm64
        	if [ $MACHINE_TYPE = 'arm64' ]; then
            		sudo dpkg --add-architecture armhf
            		sudo dpkg --add-architecture armel
            		sudo dpkg --add-architecture arm64
	else
    ####remove all architecture except machines
    #rm != $MACHINE_TYPE
            sudo dpkg --remove-architecture armhf
            sudo dpkg --remove-architecture armel
            #sudo dpkg --remove-architecture arm64
	        #sudo dpkg --remove-architecture aarch64
          fi
        fi
fi
}

run() {
#x-terminal-emulator --tab --title='frontend' -e "bash -c 'mkdir work && cd work && git clone https://github.com/emailbombu/sketch.git'"
./blunk.sh
}

drive() {
if [ $MACHINE_TYPE = 'arm64' ]; then
    echo $MACHINE_TYPE
    elif [ $MACHINE_TYPE = 'aarch64' ]; then
            echo $MACHINE_TYPE   
        elif [ $MACHINE_TYPE = 'armhf' ]; then
                echo $MACHINE_TYPE
            elif [ $MACHINE_TYPE = 'armel' ]; then
        echo "$MACHINE_TYPE does not exist on your filesystem."
else
    echo "Device Exists"
    if [ ! -f /dev/sda ]; then
        echo "SDA"
        elif [ ! -f /dev/sdb ]; then
            echo "SDB"
            elif [ ! -f /dev/sdc ]; then
                echo "SDC"
    fi
fi
}

yab() {
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
    #wget -O sources.list https://raw.githubusercontent.com/shell832/pancake/main/sources.list
if [ -f "$YUM" ]; then
  echo "$YUM exists."
else 
echo "Which List?"
read wall
if [ $wall = 'a' ]; then
    sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #Kali
    sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
    elif [ $wall = 'b' ]; then
        sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
        sudo cp ~/work/sketch/sources.list.b /etc/apt/sources.list
    #elif [ $wall == 'c' ]; then
     else
        sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
        sudo cp ~/work/sketch/sources.list.c /etc/apt/sources.list
   fi
  fi
fi
}

spunk() {
x-terminal-emulator --tab --title='backend' -e "bash -c '~/work/sketch/blunk.sh'"]
}


link() {
echo "Do You Want Remote Connection?"
read yes
if [ $yes == 'yes' ]; then
        x-terminal-emulator --tab --title='backend' -e "bash -c 'vank.sh'"]
        else
            echo "Hi"
fi
}


check
yab
run
#spunk
#drive
link