#!/bin/bash
sudo clear
echo "==============================================="
echo "             Check for Updates                 "
echo "==============================================="

mkdir temp
cd temp
wget https://raw.githubusercontent.com/LeCoqHardi/WolverineFramework_EN/main/Wolverine.sh
mv Wolverine.sh WolverineCompare.sh
cd ..
cp Wolverine.sh temp

file1="temp/Wolverine.sh"
file2="temp/WolverineCompare.sh"
clear

echo "==============================================="
echo "             Check for Updates                 "
echo "==============================================="


if cmp -s "$file1" "$file2"; then
    printf "No Updates Available."
    sudo rm -r temp/
else
    printf "An Update is Available, please wait..."
    echo ""
    cd ..
    sudo rm -r WolverineFramework_FR/
    git clone https://github.com/LeCoqHardi/WolverineFramework_FR
    cd WolverineFramework_FR/
    echo ""
    echo "Update complete."
    $SHELL
    
fi

echo ""
