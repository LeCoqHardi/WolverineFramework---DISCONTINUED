#!/bin/bash


echo "What is the IP or the hostname of your target ?"
read IP
echo "What is the session name of your target ?"
read Session
echo "What is the protocol targetted ?"
read protocol
echo "Here are your Wordlists"
echo "=========================================="
echo ""
ls Wordlists/
echo ""
echo "=========================================="
echo "Which wordlist do you want to use (don't forget filename extension !) ?"
read Wordlist
sudo patator $protocol"_login" host=$IP user=$Session password=FILE0 0=Wordlists/$Wordlist
