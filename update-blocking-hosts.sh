#!/bin/bash
# Requires root access to modify /etc/hosts
# Updates using "how to make the internet not suck (as much)" block list
##!! You should probably backup your original system hosts file with:
## `sudo cp /etc/hosts /etc/hosts.orig`

mkdir ~/temp
curl --silent http://someonewhocares.org/hosts/hosts > ~/temp/hosts
chown root ~/temp/hosts
mv /etc/hosts /etc/hosts~ && mv ~/temp/hosts /etc/hosts && echo "Updated blocking hosts."
rm ~/temp/hosts
rmdir ~/temp