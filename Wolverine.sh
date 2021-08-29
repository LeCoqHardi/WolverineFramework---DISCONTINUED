#!/bin/bash

#english version
#This script allow you to use Kali Linux basic tools easily, it's very easy to understand, and graphical.
#Made by LeCoqHardi : https://www.lecoqhardi.xyz // https://twitter.com/LeCoqHardi__

sudo clear 
tput setaf 1
cat logo
tput setaf 7

echo "---------------------------------"
echo "What hacking process do you wanna do ?"
echo "---------------------------------"
echo ""
echo "1) Man in The Middle Attack"
echo ""
echo "2) DoS / DDoS"
echo ""
echo "3) Bruteforce SSH"
echo ""
echo "4) Network Scanning"
echo ""
echo "5) Launch Metasploit"
echo ""
echo "6) Get informations from a phone number"
echo ""
echo "7) Scan wordpress vulnerabilities"
echo ""
echo "8) Hide your MAC Adress with a fake MAC Adress"
echo ""
echo "9) Take control of a Windows Computer"
echo ""
echo "G) Take a Gaming Break"
echo ""
echo "X) Quit Wolverine.sh"
echo "---------------------------------"
echo "Enter your choice here (1, 2, 3, 4, 5, 6, 7, 8, 9 or 10 and X to close)"
read Reponse
if [ $Reponse = "1" ]
then
	echo "You wanna perform a Man in the Middle attack, lauching Ettercap..."
	echo "----------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	./Scripts/Ettercap.sh
elif [ $Reponse = "2" ]
then
	echo "You wanna perform a DoS or DDOS attack, launching hping3..."
	echo "-----------------------------------------------------------------"
	clear
	cat logo
	echo "-----------------------------------------------------------------"
	./Scripts/DDOS_ICMP.sh
elif [ $Reponse = "3" ]
then
	echo "You wanna perform a Bruteforce Attack, launching Medusa and Patator..."
	echo "----------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	./Scripts/BruteforceChoice.sh
elif [ $Reponse = 4 ]
then
	echo "You want to scan a network, launching nmap..."
	echo "----------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	./Scripts/Nmap.sh
elif [ $Reponse = 5 ]
then
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	echo "Launching Metasploit..."
	service postgresql start
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	sudo msfconsole
elif [ $Reponse = 6 ]
then
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	echo "Enter the phone number with the country code (France = +336...)"
	read numero
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	echo "Launching PhoneInfoga..."
	./Scripts/phoneinfoga scan -n $numero
elif [ $Reponse = 7 ]
then
	echo "You want to scan Wordpress vulnerabilities, launching WPScan..."
	echo "----------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	./Scripts/WPScan.sh
elif [ $Reponse = 8 ]
then
	echo "You want to change your MAC Address, launching MacChanger..."
	echo "---------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "---------------------------------------------------------------"
	./Scripts/MacChanger.sh
elif [ $Reponse = "G" ]
then
	echo "You want to take a gaming break..."
	echo "---------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "---------------------------------------------------------------"
	./Scripts/Games.sh
elif [ $Reponse = 9 ]
then
	echo "Vous voulez prendre le contrôle d'un PC windows..."
	echo "---------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "---------------------------------------------------------------"
	./Scripts/MSFVenomWindows.sh
elif [ $Reponse = X ]
then
	exit
elif [ $Reponse = x ]
then
	exit
fi
echo "----------------------------------------------------------------------------------------"
echo "Do you want to continue using this script, or quit ? (1 - Continue // 2 - Quit)"
read end
if [ $end = 1 ]
then
	./Wolverine.sh
elif [ $end = 2 ]
then
	exit
fi
