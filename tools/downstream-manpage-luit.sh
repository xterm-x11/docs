#!/bin/bash
#Downstreaming luit-related pages from Thomas Dickey's https://invisible-island.net/

set -e

# the original file is https://invisible-island.net/luit/manpage/luit.html

  cp ../luit-on-invisible-island/manpage-luit.html ../stage/manpage-luit-text.html
# cp ../luit-on-invisible-island/manpage-luit.html ../stage/manpage-luit-nav.html

# get the line number for this HTML element, pipe it as a variable with read, and delete the first lines of the file excluding the line of this HTML element
sed -n '/<h2><a name="h2-NAME" id="h2-NAME">NAME<\/a><\/h2>/=' ../stage/manpage-luit-text.html | (read ; LINEBEFORE=$(( $REPLY - 1 )); sed -i "1,$LINEBEFORE d" ../stage/manpage-luit-text.html)

# get the line number for this HTML element, pipe it as a variable with read, and delete the last lines of the file including the line of this HTML element
sed -n '/<div class="nav">/=' ../stage/manpage-luit-text.html | (read ; sed -i "$REPLY,$ d" ../stage/manpage-luit-text.html)

<<comment

# get the line number for this HTML element, pipe it as a variable with read, and delete the first lines of the file excluding the line of this HTML element
sed -n '/<div class="nav">/=' ../stage/manpage-luit-nav.html | (read ; LINEBEFORE=$(( $REPLY - 1 )); sed -i "1,$LINEBEFORE d" ../stage/manpage-luit-nav.html)

# OR

# get the line number for this HTML element, pipe it as a variable with read, and delete the first lines of the file including the line of this HTML element
sed -n '/<div class="nav">/=' ../stage/manpage-luit-nav.html | (read ; sed -i "1,$REPLY d" ../stage/manpage-luit-nav.html)

# AND

# get the line number for this HTML element, pipe it as a variable with read, and delete the last lines of the file excluding the line of this HTML element
sed -n '/<\/div>/=' ../stage/manpage-luit-nav.html | (read ; LINEAFTER=$(( $REPLY + 1 )); sed -i "$LINEAFTER,$ d" ../stage/manpage-luit-nav.html)

# OR

# get the line number for this HTML element, pipe it as a variable with read, and delete the last lines of the file including the line of this HTML element
sed -n '/<\/div>/=' ../stage/manpage-luit-nav.html | (read ; sed -i "$REPLY,$ d" ../stage/manpage-luit-nav.html)

comment

cp ../site/manpage-luit/index.html ../site/manpage-luit/index-part-1.html
cp ../site/manpage-luit/index.html ../site/manpage-luit/index-part-2.html

# get the line number for this HTML element, pipe it as a variable with read, and delete the last lines of the file including the line of this HTML element
sed -n '/downstreamed content/=' ../site/manpage-luit/index-part-1.html | (read ; sed -i "$REPLY,$ d" ../site/manpage-luit/index-part-1.html)

# get the line number for this HTML element, pipe it as a variable with read, and delete the first lines of the file including the line of this HTML element
sed -n '/end of downstreamed content/=' ../site/manpage-luit/index-part-2.html | (read ; sed -i "1,$REPLY d" ../site/manpage-luit/index-part-2.html)

cat ../site/manpage-luit/index-part-1.html ../stage/manpage-luit-text.html ../site/manpage-luit/index-part-2.html > ../site/manpage-luit/index.html

rm ../stage/manpage-luit-text.html
rm ../site/manpage-luit/index-part-1.html ../site/manpage-luit/index-part-2.html
