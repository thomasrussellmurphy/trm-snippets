#!/bin/bash
# Create default Gerber output of PCB file and save in ./gerb/
# Usage: create-gerbers.sh "pcb layout.pcb"
# WARNING: this CLEANS OUT the relative directory "gerb"

GERBLOCATION=gerb # where we want the gerbers stored

# clean target dir
rm $GERBLOCATION/*

# generate the gerber files
pcb -x gerber --gerberfile "$GERBLOCATION/" --verbose --copy-outline none --name-style fixed "$1"

# unhide any pesky files that show up hidden by default
cd $GERBLOCATION
for fn in \.?*\.*; do mv -n $fn "${fn:1}" ; done
cd ..
