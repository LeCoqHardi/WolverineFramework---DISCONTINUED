#!/bin/bash

echo "Enter the URL of the Website (Make sur it is made with Wordpress)"
read -p "WolverineFramework - URL> " varURL
wpscan --url $varURL
