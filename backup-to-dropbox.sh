#!/bin/bash
# Usage: backup-to-dropbox.sh path/containing/target "target dir" ["backup prefix " ]
## Note: error on first `mv` is expected for first backups or new name
## Note: need trailing space on prefix if desired
## WARNING: Do NOT omit argument $2, you will EMPTY ~/Dropbox/Backups/
##  of ALL *.tgz files. Best to only use automatic backups.


cd "$1"
SOURCE="$2"
PREFIXED="$3$SOURCE"

DATE=`date "+%Y%m%dT%H%M%S"`
mv ~/"Dropbox/Backups/$PREFIXED"*.tgz ~/.Trash/
tar -czf "$PREFIXED $DATE.tgz" "$SOURCE/"
mv "$PREFIXED $DATE.tgz" ~/Dropbox/Backups/