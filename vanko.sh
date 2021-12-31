#!/bin/bash



stack() {
sudo apt install novnc

}

vanko() {
if [ ${MACHINE_TYPE} == 'arm*' ];
    utils/novnc_proxy --vnc localhost:5901 --listen localhost:6081


    elif [ ${MACHINE_TYPE} == '*86*' ];
        utils/novnc_proxy --vnc localhost:5901


fi

}

stack
vanko