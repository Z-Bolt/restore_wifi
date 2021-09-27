#!/bin/bash

#Удаление файлов
sudo rm -r /home/pi/KlipperScreen/panels/system.py
sudo rm -r /home/pi/moonraker/moonraker/components/machine.py

#Копирование
sudo cp -r /home/pi/restore_wifi/backup_files/system.py.save /home/pi/KlipperScreen/panels/system.py
sudo cp -r /home/pi/restore_wifi/backup_files/machine.py.save /home/pi/moonraker/moonraker/components/machine.py

#Перезагрузка
sudo reboot





