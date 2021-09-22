#!/bin/bash

#Выдача прав
sudo chmod 777 /home/pi/restore_wifi/*

#Создание бекапа
mkdir /home/pi/restore_wifi/backup_files/
sudo cp -r /home/pi/KlipperScreen/panels/system.py /home/pi/restore_wifi/backup_files/system.py.back
sudo cp -r /home/pi/moonraker/moonraker/components/machine.py /home/pi/restore_wifi/backup_files/machine.py.back

#Удаление отбекапленных файлов
sudo rm -r /home/pi/KlipperScreen/panels/system.py
sudo rm -r /home/pi/moonraker/moonraker/components/machine.py

#Копирование
sudo cp -r /home/pi/restore_wifi/system.py /home/pi/KlipperScreen/panels/system.py
sudo cp -r /home/pi/restore_wifi/machine.py /home/pi/moonraker/moonraker/components/machine.py
sudo cp -r /home/pi/restore_wifi/network_restore.svg /home/pi/KlipperScreen/styles/z-bolt/images/network_restore.svg

sudo reboot
