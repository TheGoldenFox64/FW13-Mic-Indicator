#!/bin/bash

#This program will check if my microphone is muted or not and return 1 or 0, using amixer.

function LightSet() {
    #checks the output of amixer, to see if the mic is on or not
    AmixerOut=$(sudo amixer -c 1 cget name='Capture Switch' | grep values=o)
    MicEnabled="  : values=on,on"

    echo $AmixerOut

    #converts the output of line 7 to a bool
    if [ "$AmixerOut" = "$MicEnabled" ]; then
    MicStat=true
    else
    MicStat=false
    fi

    #sets the power button to be red or white and echoes the current state if uncommented
    if [ $MicStat = true ]; then
        sudo fw-ectool led power white
        #echo white
    else
        sudo fw-ectool led power red
        #echo red
    fi
}

#resets when ctrl+c is used
function reset() {
    sudo fw-ectool led left off
    sudo fw-ectool led right off
    sudo fw-ectool led power white
    exit
}
trap reset SIGTERM SIGINT
#the whole shabangbang
while :
do
   LightSet
done
