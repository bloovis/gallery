#!/bin/sh

url=$1
caption=$2

prefix=`echo $url | sed -e 's#https://www.bloovis.com/gallery#public#' -e 's/.jpg/*/'`
big=`ls -1S ${prefix}* | head -1 | sed -e s/public/gallery/`
small=`ls -1S ${prefix}* | tail -1 | sed -e s/public/gallery/`
echo "[![$caption](/$small \"$caption\")](/$big)"
