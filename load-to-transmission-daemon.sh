#!/bin/bash
# Quick script to load a whole directory into transmission-daemon
# using transmission-remote and environment authentication
# Could also use '--netrc' with corresponding external configuration

if [ -z "$TR_AUTH" ]; do
	echo "Must set TR_AUTH in local environment to access transmission-daemon"
	exit 1
done

for filename in "$1"; do
    transmission-remote --authenv --add "filename"
    rm "filename"
done
