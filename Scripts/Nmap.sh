#!/bin/bash


echo "What do you want to scan ?"
echo ""
echo "1) Server or Website"
echo ""
echo "2) Scan all hosts on a LAN"
echo ""
echo "---------------------------------------"
echo "Type your answer here "
read Reponse
if [ $Reponse = "1" ]
then
	echo "What is the domain name/IP of the Website/Server ?"
	read IP
	echo "--------------------------------------------------"
	echo "Which type of scan do you want to perform ? 1 = Classic // 2 = Aggressive"
	read ReponseII
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
	IP=$(hostname -I | awk '{print $1}')
	echo "Your IP address is :" $IP
	echo "-------------------------------------------------"
	echo "Launching scan..."
	nmap $IP/24
fi

