#!/bin/bash

echo "Enter the URL of the Website (Make sur it is made with Wordpress)"
read varURL
wpscan --url $varURL
