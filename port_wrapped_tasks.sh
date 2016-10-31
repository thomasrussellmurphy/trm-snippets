#!/bin/bash
# Complete update system, run with `sudo` and keep this file -w
# Based on https://guide.macports.org/chunked/using.common-tasks.html
# Use at your own risk, requires interaction with `less` for confirmation

# Self-updates MacPorts
# Displays outdated ports, ^C will end update process in `less`, 'q' continues
# Helped by http://unix.stackexchange.com/a/287819/167427
# Upgrades all outdated ports
# Unistalls all inactive ports and leaf ports

bash -c 'port selfupdate && port outdated | less -K && port upgrade outdated && port uninstall leaves inactive'
