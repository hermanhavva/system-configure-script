#!/bin/bash

sudo apt install nload
sudo apt install netperf 
sudo snap install fast

sudo mkdir -p /usr/share/rocketman/opt/
sudo touch /usr/share/rocketman/opt/config.rs

sudo chmod +x simpleService.sh
sudo mv simpleService.sh /etc
sudo mv simpleService.service /etc/systemd/system
sudo mv simpleService.timer /etc/systemd/system

sudo systemctl daemon-reload
sudo systemctl enable simpleService.timer

sudo systemctl start TIMER.timer