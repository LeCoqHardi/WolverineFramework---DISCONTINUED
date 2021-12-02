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
	bash /etc/WolverineFramework/Scripts/BruteforceMedusa.sh
#Hydra part
elif [ $Reponse = "2" ]
then
	echo "You wanna use Hydra, launching Hydra..."
	echo "------------------------------------------------------"
	bash /etc/WolverineFramework/Scripts/BruteforceHydra.sh
#Patator part
elif [ $Reponse = "3" ]
then
	echo "You wanna use Patator, launching Patator..."
	echo "--------------------------------------------------------"
	bash /etc/WolverineFramework/Scripts/BruteforcePatator.sh
fi
