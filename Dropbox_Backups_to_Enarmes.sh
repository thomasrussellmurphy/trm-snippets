#!/bin/bash
# Hard-clone directory with rsync, ignoring hidden files
# recursive, preserve times, verbose, prune empty dirs; delete extraneous files; exclude system hidden files

rsync -rtvm --delete --exclude='**/.*' ~/Dropbox/Backups/ /Volumes/Enarmes/Backups/
