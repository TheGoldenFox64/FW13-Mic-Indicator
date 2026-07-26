#!/bin/bash

sudo chmod +x mic-mute-monitor.sh
sudo cp mic-mute-monitor.sh /usr/local/sbin/
sudo cp micmonitor.service /etc/systemd/system/
