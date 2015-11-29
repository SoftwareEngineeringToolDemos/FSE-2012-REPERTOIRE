#!/usr/bin/env bash

sudo apt-get update

# Installs pyuic4
sudo apt-get install -y pyqt4-dev-tools 
# Installs qt4
sudo apt-get install -y qt4-designer 


cd Desktop
sudo apt-get -y install git
sudo git clone https://github.com/SoftwareEngineeringToolDemos/FSE-2012-REPERTOIRE.git
cd FSE-2012-REPERTOIRE/src
sudo make
cd ..
cd build-vm/Resources

# Copying all files to desktop 
sudo cp -rf Licenses ../../../Licenses
sudo cp -rf Examples ../../../Examples
sudo cp -rf Results ../../../Results
sudo cp REPERTOIRE.desktop ../../../REPERTOIRE.desktop
sudo cp lock.sh ../../../lock.sh
sudo cp Disable.lock ../../../Disable.lock
sudo cp Readme.txt ../../../Readme.txt
sudo cp installation.txt ../../../installation.txt
sudo cp video_REPERTOIRE.desktop ../../../video_REPERTOIRE.desktop

# Configuring autostart options
sudo mkdir "/home/vagrant/.config/autostart"
sudo mv REPERTOIRE.desktop /home/vagrant/.config/autostart/REPERTOIRE.desktop
sudo cp Disable.lock /home/vagrant/.config/autostart/Disable.lock

# Remove unnecessary launcher applications
sudo rm -f "/usr/share/applications/ubuntu-amazon-default.desktop"
sudo rm -f "/usr/share/applications/libreoffice-calc.desktop"
sudo rm -f "/usr/share/applications/libreoffice-writer.desktop"
sudo rm -f "/usr/share/applications/libreoffice-impress.desktop"
sudo rm -f "/usr/share/applications/ubuntu-software-center.desktop"

# Reboot
sudo reboot
