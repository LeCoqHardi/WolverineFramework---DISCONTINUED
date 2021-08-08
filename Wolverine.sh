#!/bin/bash


#This script allow you to use Kali Linux basic tools easily, it's very easy to understand, and graphical.
#Made by LeCoqHardi : https://www.lecoqhardi.xyz // https://twitter.com/LeCoqHardi__

sudo clear 
tput setaf 1
cat logo

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
echo "X) Quit Wolverine.sh"
echo "---------------------------------"
echo "Enter your choice here (1, 2, 3, 4, 5, 6, 7 or 8 and X to close)"
read Reponse
if [ $Reponse = "1" ]
then
	echo "You wanna perform a Man in the Middle attack, lauching Ettercap..."
	echo "----------------------------------------------------------------"
	clear
	cat logo
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
	cat logo
	echo "----------------------------------------------------------------"
	./Scripts/BruteforceChoice.sh
elif [ $Reponse = 4 ]
then
	echo "You want to scan a network, launching nmap..."
	echo "----------------------------------------------------------------"
	clear
	cat logo
	echo "----------------------------------------------------------------"
	./Scripts/Nmap.sh
elif [ $Reponse = 5 ]
then
	clear
	cat logo
	echo "----------------------------------------------------------------"
	echo "Launching Metasploit..."
	service postgresql start
	clear
	cat logo
	echo "----------------------------------------------------------------"
	msfconsole
elif [ $Reponse = 6 ]
then
	clear
	cat logo
	echo "----------------------------------------------------------------"
	echo "Enter the phone number with the country code (France = +336...)"
	read numero
	clear
	cat logo
	echo "----------------------------------------------------------------"
	echo "Launching PhoneInfoga..."
	./Scripts/phoneinfoga scan -n $numero
elif [ $Reponse = 7 ]
then
	echo "You want to scan Wordpress vulnerabilities, launching WPScan..."
	echo "----------------------------------------------------------------"
	clear
	cat logo
	echo "----------------------------------------------------------------"
	./Scripts/WPScan.sh
elif [ $Reponse = 8 ]
then
	echo "You want to change your MAC Address, launching MacChanger..."
	echo "---------------------------------------------------------------"
	clear
	cat logo
	echo "---------------------------------------------------------------"
	./Scripts/MacChanger.sh
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
