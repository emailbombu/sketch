#!/bin/bash


echo "             ^"
echo "             _"
echo "- - - _ ---_-_-_"

stack() {
sudo apt install novnc
}

vanko() {
echo "local listen,(yes), remote listen?(no)"
read anz
if [ $anz = 'yes' ];
    utils/novnc_proxy --vnc localhost:5901 --listen localhost:6081


    elif [ $anz = 'no' ];
        utils/novnc_proxy --vnc localhost:5901
fi

}

stack
vanko