#!/usr/bin/env python

import sys
import os
import Image

args = sys.argv[1:]
for path in args:
    if os.path.exists(path):
        print path
        i = Image.open(path)
        # crop it
        ( newX , newY ) = ( 650 , 222 )
        ( newW , newH ) = ( 900 , 200 )
        box_crop = ( newX,newY,newX+newW,newY+newH )
        i2 = i.crop(box=box_crop)
        i2.load()
        i2.save(path)
print "done"
