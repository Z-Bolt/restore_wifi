#!/bin/bash

#Выдача прав
sudo chmod 777 ./
#Создание бекапа
mkdir ./backup_files
sudo cp -R /home/pi/KlipperScreen/panels/system.py /home/pi/restore_wifi/backup_files/system.py.back
sudo cp -R /home/pi/moonraker/moonraker/components/machine.py /home/pi/restore_wifi/backup_files/machine.py.back
#Удаление отбекапленных файлов
sudo rm -R /home/pi/KlipperScreen/panels/system.py
sudo rm -R /home/pi/moonraker/moonraker/components/machine.py
#Копирование
sudo cp -R /home/pi/restore_wifi/system.py /home/pi/KlipperScreen/panels/system.py
sudo cp -R /home/pi/restore_wifi/backup_files/machine.py /home/pi/moonraker/moonraker/components/machine.py
sudo reboot
