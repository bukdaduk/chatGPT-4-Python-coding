#!/bin/bash
# Name: test.sh
# Purpose: Demos compgen and complete
# Author: Vivek Gite, under GPL v2.x+
# ------------------------------------------
 
# My default interface
if_default="wlo1"
 
# Help
USAGE="usage: $0 -d -h -i -r -H"
 
# CLI args
# -d for date
# -h for hostname
# -i for IP address
# -r for routing
# -H get help
# -----------------------------
while getopts :dhirH opt_char
do
case $opt_char in
	d) echo "Date: $(date)";;
	h) echo "Hostname: $HOSTNAME";;
	i) echo -e "IP for $if_default interface\n $(ip addr show $if_default)\n";;
	r) echo -e "Default routing for $HOSTNAME:\n $(ip route show)\n";;
	H) echo "$USAGE";;
	\?)
	echo "$OPTARG is not a valid option."
	echo "$USAGE";;
esac
done
