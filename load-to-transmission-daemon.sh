#!/bin/bash
# Quick script to load a whole directory into transmission-daemon
# using transmission-remote and environment authentication
# Could also use '--netrc' with corresponding external configuration

# Usage: load-to-transmission-daemon.sh torrent/path/
# **Requires trailing '/' to search whole directory for '*.torrent'

if [ -z "$TR_AUTH" ]; then
	echo "Must set TR_AUTH in local environment to access transmission-daemon"
	exit 1
fi

for filename in "$1"*.torrent; do
    transmission-remote --authenv --add "$filename"
    rm "$filename"
done
