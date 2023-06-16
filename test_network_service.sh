#!/bin/bash

# Check if the system is using Systemd
if pidof systemd >/dev/null 2>&1; then
    # Check if the network service is named "network" (default on most distributions)
    if systemctl -q is-active network >/dev/null 2>&1; then
        echo "Network service is already active."
        echo "To stop the network service, use: systemctl stop network"
    else
        echo "Network service is not active."
        echo "To start the network service, use: systemctl start network"
    fi
else
    echo "Systemd is not being used as the network system daemon."
    echo "Please check the documentation for your specific system to find the appropriate commands."
fi
