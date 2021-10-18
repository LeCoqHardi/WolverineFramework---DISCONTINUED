#!/bin/bash


echo "Which bruteforce script do you want to use ?"
echo ""
echo "1) Medusa"
echo ""
echo "2) Hydra"
echo ""
echo "3) Patator"
echo ""
echo "------------------------------------------------------"
echo ""
echo "Enter your answer here"
read -p "WolverineFramework - Answer> " Reponse
#medusa part
if [ $Reponse = "1" ]
then
	echo "You wanna use Medusa, launching Medusa..."
	echo "------------------------------------------------------"
	./Scripts/BruteforceMedusa.sh
#Hydra part
elif [ $Reponse = "2" ]
then
	echo "You wanna use Hydra, launching Hydra..."
	echo "------------------------------------------------------"
	./Scripts/BruteforceHydra.sh
#Patator part
elif [ $Reponse = "3" ]
then
	echo "You wanna use Patator, launching Patator..."
	echo "--------------------------------------------------------"
	./Scripts/BruteforcePatator.sh
fi
