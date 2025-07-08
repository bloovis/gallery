#!/bin/sh

# Convert a URL for a gallery image (parameter #1),
# and a caption string (parameter #2) to Markdown link that
# can be used in a post on the main web site.

url=$1
caption=$2

prefix=`echo $url | sed -e 's#http.*/gallery#public#' -e 's/.jpg/*/'`
big=`ls -1S ${prefix}* | head -1 | sed -e s/public/gallery/`
small=`ls -1S ${prefix}* | tail -1 | sed -e s/public/gallery/`
echo "[![$caption](/$small \"$caption\")](/$big)"
