#!/bin/bash


#This script allow you to use Kali Linux basic tools easily, it's very easy to understand, and graphical.
#Made by LeCoqHardi : https://www.twitch.tv/lecoqhardi // https://twitter.com/LeCoqHardi__

sudo clear
bash /etc/WolverineFramework/CheckForUpdates.sh
clear
tput setaf 1
cat /etc/WolverineFramework/logo
tput setaf 7

echo "---------------------------------"
echo "What hacking process do you wanna perform ?"
echo "---------------------------------"
echo ""
echo "1) Man in The Middle Attack"
echo ""
echo "2) DoS / DDoS"
echo ""
echo "3) Bruteforce"
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
echo "10) Take control of an Android Phone"
echo ""
echo "X) Quit Wolverine.sh"
echo "---------------------------------"
echo "Enter your choice here (1, 2, 3, 4, 5, 6, 7, 8, 9 or 10 and X to close)"
echo ""
read -p "WolverineFramework> " Reponse

# MITM PART
if [ $Reponse = 1 ]
then
	echo "You wanna perform a Man in the Middle attack, lauching Ettercap..."
	echo "----------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	./Scripts/Ettercap.sh

# DDOS PART
elif [ $Reponse = 2 ]
then
	echo "You wanna perform a DoS or DDoS attack, launching hping3..."
	echo "-----------------------------------------------------------------"
	clear
	cat logo
	echo "-----------------------------------------------------------------"
	./Scripts/DDOS_ICMP.sh
# BRUTEFORCE PART
elif [ $Reponse = 3 ]
then
	echo "You wanna perform a Bruteforce Attack, launching Medusa, Hydra and Patator..."
	echo "----------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	./Scripts/BruteforceChoice.sh

# NETWORK SCANNING PART
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
# MSFCONSOLE PART
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

# PHONEINFOGA PART
elif [ $Reponse = 6 ]
then
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	echo "Enter the phone number with the country code (France = +336...)"
	read -p "WolverineFramework - Phone Number> " numero
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "----------------------------------------------------------------"
	echo "Launching PhoneInfoga..."
	./Scripts/phoneinfoga scan -n $numero

# WPSCAN PART
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

#MACCHANGER PART
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


# WINDOWS CONTROL PART
elif [ $Reponse = 9 ]
then
	echo "You want to take control of a Windows Computer..."
	echo "---------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "---------------------------------------------------------------"
	./Scripts/MSFVenomWindows.sh

# ANDROID CONTROL PART
elif [ $Reponse = 10 ]
then
	echo "You want to take control of an Android Phone..."
	echo "---------------------------------------------------------------"
	clear
	tput setaf 1
	cat logo
	tput setaf 7
	echo "---------------------------------------------------------------"
	./Scripts/MSFVenomAndroid.sh

# EXIT PART
elif [ $Reponse = X ]
then
	exit
elif [ $Reponse = x ]
then
	exit
fi
echo "----------------------------------------------------------------------------------------"
echo "Do you want to continue using this Wolverine, or quit ? (1 - Continue // 2 - Quit)"
read end
if [ $end = 1 ]
then
	./Wolverine.sh
elif [ $end = 2 ]
then
	exit
fi
