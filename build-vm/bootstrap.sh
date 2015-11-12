#!/usr/bin/env bash

sudo apt-get update
echo ********* INSTALLING QT 4.x Development Tools **********
sudo apt-get install -y pyqt4-dev-tools 
echo ********* INSTALLING QT 4.x **********
sudo apt-get install -y qt4-designer 

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi