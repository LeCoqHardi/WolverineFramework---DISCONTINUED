#!/bin/bash

echo "Which game do you wanna play ?"
echo ""
echo "1) Tetris" #Bastet
echo ""
echo "2) Snake" #nsnake
echo ""
echo "3) Sudoku" #nudoku
echo ""
echo "4) Space Invaders" #ninvaders
echo ""
echo "------------------------------------------------------"

read -p "WolverineFramework - Game> "game

if [ $game = "1" ]
then
    echo "Launching Tetris..."
    bastet

elif [ $game = "2" ]
then
    echo "Launching Snake..."
    nsnake

elif [ $game = "3" ]
then
    echo "Launching Sudoku..."
    nudoku

elif [ $game = "4" ]
then
    echo "Launching Space Invaders..."
    ninvaders

fi
