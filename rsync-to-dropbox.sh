#!/bin/bash
# Usage: backup-to-dropbox.sh path/containing/target "target dir" ["backup prefix" ]

cd "$1"
SOURCE="$2"
PREFIXED="$3$SOURCE"

rsync -rtmq --delete --exclude='**/.*' "$SOURCE/" ~/"Dropbox/$PREFIXED-RO"
# recursive, preserve times, prune empty directories, quiet; delete extraneous files; exclude system hidden files
