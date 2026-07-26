#!/bin/bash

sudo chmod +x /usr/local/sbin mic-mute-monitor.sh
sudo mv mic-mute-monitor.sh /usr/local/sbin/
sudo mv micmonitor.service /etc/systemd/system/
