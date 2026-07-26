#!/bin/bash

sudo mv mic-mute-monitor.sh /usr/local/sbin/
sudo chmod +x /usr/local/sbin mic-mute-monitor.sh
sudo mv micmonitor.service /etc/systemd/system/
