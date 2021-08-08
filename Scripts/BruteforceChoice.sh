#!/bin/bash


echo "Which bruteforce script do you want to use ?"
echo ""
echo "1) Medusa"
echo ""
echo "2) Patator"
echo ""
echo "------------------------------------------------------"
echo ""
echo "Enter your answer here"
read Reponse
if [ $Reponse = "1" ]
then
	echo "You wanna use Medusa, launching Medusa..."
	echo "------------------------------------------------------"
	./Scripts/BruteforceMedusa.sh
elif [ $Reponse = "2" ]
then
	echo "You wanna use Patator, launching Patator..."
	echo "--------------------------------------------------------"
	./Scripts/BruteforcePatator.sh
fi
