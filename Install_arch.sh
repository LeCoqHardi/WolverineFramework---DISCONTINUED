#!/bin/bash

#script to install packages


echo "---------------------"
echo "Installing NMAP ..."
echo "---------------------"
sudo pacman -S nmap -y
clear
echo "----------------------"
echo "Installing hping3..."
echo "----------------------"
sudo pacman -S hping -y
clear
#echo "----------------------"
#echo "Installation de Patator..."
#echo "----------------------"
#sudo apt install patator -y
#clear
echo "----------------------"
echo "Installing Medusa..."
echo "----------------------"
sudo pacman -S medusa -y
clear
echo "----------------------"
echo "Installing Hydra..."
echo "----------------------"
sudo pacman -S hydra -y
clear
echo "----------------------"
echo "Installing Ettercap..."
echo "----------------------"
sudo pacman -S ettercap-gtk -y
clear
echo "----------------------"
echo "Installing MacChanger..."
echo "----------------------"
sudo pacman -S macchanger -y
clear
echo "----------------------"
echo "Installing WPScan..."
echo "----------------------"
sudo pacman -S wpscan -y
clear
echo "----------------------"
echo "Installing de Arp-Scan..."
echo "----------------------"
sudo pacman -S arp-scan -y
clear
echo "----------------------"
echo "Installing PostGreSQL..."
echo "----------------------"
sudo pacman -S postgresql -y
clear
echo "----------------------"
echo "Installing MSFConsole..."
echo "----------------------"
sudo pacman -S metasploit -y
clear
echo "----------------------"
echo "Preparing scripts..."
echo "----------------------"
sudo chmod a+x /etc/WolverineFramework/Scripts/* && sudo chmod a+x Wolverine.sh
