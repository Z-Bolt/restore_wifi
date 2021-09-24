#!/bin/bash

#Turn off service /etc/systemd/system/*
sudo systemctl stop klipper.service
sudo systemctl stop KlipperScreen.service
sudo systemctl stop networking.service

#Move file /etc/wpa_supplicant
sudo rm -R /etc/wpa_supplicant/wpa_supplicant.conf
sudo cp -R /home/pi/restore_wifi/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

#Reboot
sudo systemctl start klipper.service
sudo systemctl start moonraker.service
sudo systemctl start KlipperScreen.service
sudo systemctl start networking.service