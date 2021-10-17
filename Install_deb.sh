#!/bin/bash
#script to install packages


echo "---------------------"
echo "Installing NMAP ..."
echo "---------------------"
sudo apt install nmap -y
clear
echo "----------------------"
echo "Installing hping3..."
echo "----------------------"
sudo apt install hping3 -y
clear
echo "----------------------"
echo "Installing Patator..."
echo "----------------------"
sudo apt install patator -y
clear
echo "----------------------"
echo "Installing Medusa..."
echo "----------------------"
sudo apt install medusa -y
clear
echo "Installing Hydra..."
echo "----------------------"
sudo apt install hydra -y
clear
echo "----------------------"
echo "Installing Ettercap Graphical..."
echo "----------------------"
sudo apt install ettercap-graphical -y
clear
echo "----------------------"
echo "Installing MacChanger..."
echo "----------------------"
sudo apt install macchanger -y
clear
echo "----------------------"
echo "Installing WPScan..."
echo "----------------------"
sudo apt install wpscan -y
clear
echo "----------------------"
echo "Installing Arp-Scan..."
echo "----------------------"
sudo apt install arp-scan -y
clear
echo "----------------------"
echo "Installing PostGreSQL..."
echo "----------------------"
sudo apt install postgresql -y
clear
echo "----------------------"
echo "Installing MSFConsole..."
echo "----------------------"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
clear
rm msfinstall
echo "----------------------"
echo "Installing Bastet..."
echo "----------------------"
sudo apt install bastet -y
clear
echo "----------------------"
echo "Installing Nsnake..."
echo "----------------------"
sudo apt install nsnake -y
clear
echo "----------------------"
echo "Installing Nudoku..."
echo "----------------------"
sudo apt install nudoku -y
clear
echo "----------------------"
echo "Installing Ninvaders..."
echo "----------------------"
sudo apt install ninvaders -y
clear
echo "----------------------"
echo "Preparing all scripts..."
echo "----------------------"
chmod a+x Scripts/* && chmod a+x *.sh

