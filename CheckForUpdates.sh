#!/bin/bash
sudo clear
echo "==============================================="
echo "             Check for Updates                 "
echo "==============================================="

sudo mkdir temp
cd temp
sudo wget https://raw.githubusercontent.com/LeCoqHardi/WolverineFramework/main/Wolverine.sh
sudo mv /etc/WolverineFramework/temp/Wolverine.sh WolverineCompare.sh
cd ..
sudo cp /etc/WolverineFramework/Wolverine.sh temp

file1="/etc/WolverineFramework/temp/Wolverine.sh"
file2="/etc/WolverineFramework/temp/WolverineCompare.sh"
clear

echo "==============================================="
echo "             Check for Updates                 "
echo "==============================================="


if cmp -s "$file1" "$file2"; then
    printf "No update available."
    sudo rm -r temp/
else
    printf "An update is available, do you want to install it ? [y/n]"
    read rep
    if [ $rep = n ]
        then
        exit
    elif [ $rep = y ]
        then
        echo ""
        echo "Updating, please wait..."
        cd ..
        sudo rm -r WolverineFramework/
        sudo git clone https://github.com/LeCoqHardi/WolverineFramework
        cd WolverineFramework/
        echo ""
        echo "Update complete."
        sudo chmod a+x *.sh && chmod a+x Scripts/*
        $SHELL
    fi
    
fi

echo ""
