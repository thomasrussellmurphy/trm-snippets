#!/bin/bash
rsync -rtmq --delete --exclude='**/.*' /hello/this/is/an/absolute/directory/path /Users/thomas/Dropbox/to_this_directory
#recursive, preserve times, prune empty directories, quiet; delete extraneous files; exclude system hidden files
# I don't use this exact script ;D
