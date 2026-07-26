#!/bin/bash

sudo chmod +x mic-mute-monitor.sh
sudo mv mic-mute-monitor.sh /usr/local/sbin/
sudo mv micmonitor.service /etc/systemd/system/
