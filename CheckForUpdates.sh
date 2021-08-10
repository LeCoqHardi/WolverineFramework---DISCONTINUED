#!/bin/bash
clear
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
else
    printf "An Update is Available, please re clone the repository."
fi

sudo rm -r temp
