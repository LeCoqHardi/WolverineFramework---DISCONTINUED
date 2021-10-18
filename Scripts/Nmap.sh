#!/bin/bash


echo "What do you want to scan ?"
echo ""
echo "1) Server or Website"
echo ""
echo "2) Scan all hosts on a LAN"
echo ""
echo "---------------------------------------"
echo "Type your answer here "
read -p "WolverineFramework - Answer> " Reponse
if [ $Reponse = "1" ]
then
	echo "What is the domain name/IP of the Website/Server ?"
	read -p "WolverineFramework - IP> " IP
	echo "--------------------------------------------------"
	echo "Which type of scan do you want to perform ? 1 = Classic // 2 = Aggressive"
	read -p "WolverineFramework - Answer> " ReponseII
	if [ $ReponseII = "1" ]
	then
		echo "Launching classic scan..."
		nmap $IP
	elif [ $ReponseII = "2" ]
	then
		echo "Launching aggressive scan..."
		nmap -A $IP
	fi
elif [ $Reponse = "2" ]
then
	echo "1) Use NMAP (IP Address + Host brand)"
	echo ""
	echo "2) Use Arp-Scan (MAC Address + IP Address + Host brand) "
	echo ""
	echo "-------------------------------------------------"
	read -p "WolverineFramework - Answer> " Rep2
	if [ $Rep2 = "1" ]
	then
	IP=$(hostname -I | awk '{print $1}')
	echo "Your IP address is :" $IP
	echo "-------------------------------------------------"
	echo "Launching scan..."
	nmap $IP/24
	elif [ $Rep2 = "2" ]
	then
	sudo arp-scan -l
	fi

fi

