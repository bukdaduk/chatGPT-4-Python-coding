#!/bin/bash

# Check if the system is using Systemd
if pidof systemd >/dev/null 2>&1; then
    echo "Systemd is being used as the network system daemon."
elif pidof init >/dev/null 2>&1; then
    # Check if the system is using Upstart
    echo "Upstart is being used as the network system daemon."
elif pidof runsvdir >/dev/null 2>&1; then
    # Check if the system is using Runit
    echo "Runit is being used as the network system daemon."
else
    echo "Unable to determine the network system daemon."
fi
