#!/bin/bash
echo "$1.pcb is the source file"
pcb -x png --format PNG --dpi 1000 --as-shown --only-visible --use-alpha --photo-mode --outfile $1-f.png $1.pcb
pcb -x png --format PNG --dpi 1000 --as-shown --only-visible --use-alpha --photo-mode --photo-flip-y --outfile $1-b.png $1.pcb
