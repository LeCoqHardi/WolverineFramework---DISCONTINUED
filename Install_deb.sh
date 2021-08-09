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
echo "----------------------"
echo "Installing Ettercap Text Only..."
echo "----------------------"
sudo apt install ettercap-text-only -y
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
echo "Preparing all scripts..."
echo "----------------------"
chmod a+x Scripts/* && chmod a+x Wolverine.sh

