#!/bin/bash
#Downstreaming xterm-related pages from Thomas Dickey's https://invisible-island.net/

set -e

# The original file is https://invisible-island.net/xterm/xterm.log.html

cp ../xterm-on-invisible-island/xterm.log.html ../stage/release-notes-nav.html
cp ../xterm-on-invisible-island/xterm.log.html ../stage/release-notes-content.html

# get the line number for this HTML element, pipe it as a variable with read, and delete the first lines of the file excluding the line of this HTML element
sed -n '/<div class="nav">/=' ../stage/release-notes-nav.html | (read ; LINEBEFORE=$(( $REPLY - 1 )); sed -i "1,$LINEBEFORE d" ../stage/release-notes-nav.html)

# remove the line `<li class="nav-top"><a href="xterm.log.html">(top)</a></li>` from ../stage/release-notes-nav.html
sed -i /'nav-top'/d  ../stage/release-notes-nav.html

# get the line number for this HTML element, pipe it as a variable with read, and delete the last lines of the file excluding the line of this HTML element
sed -n '/<\/div>/=' ../stage/release-notes-nav.html | (read ; LINEAFTER=$(( $REPLY + 1 )); sed -i "$LINEAFTER,$ d" ../stage/release-notes-nav.html)

# get the line number for this HTML element, pipe it as a variable with read, and delete the first lines of the file including the line of this HTML element
sed -n '/<\/div>/=' ../stage/release-notes-content.html | (read ; sed -i "1,$REPLY d" ../stage/release-notes-content.html)

# get the line number for this HTML element, pipe it as a variable with read, and delete the last lines of the file including the line of this HTML element
sed -n '/<\/body>/=' ../stage/release-notes-content.html | (read ; sed -i "$REPLY,$ d" ../stage/release-notes-content.html)

# concatenate both file excerpts
cat ../stage/release-notes-nav.html ../stage/release-notes-content.html > ../stage/downstreamed-complete-release-notes-page.html

# delete both file excerpts
rm ../stage/release-notes-nav.html ../stage/release-notes-content.html

cp ../site/release-notes/index.html ../site/release-notes/index-part-1.html
cp ../site/release-notes/index.html ../site/release-notes/index-part-2.html

# get the line number for this HTML element, pipe it as a variable with read, and delete the last lines of the file including the line of this HTML element
sed -n '/downstreamed content/=' ../site/release-notes/index-part-1.html | (read ; sed -i "$REPLY,$ d" ../site/release-notes/index-part-1.html)

# get the line number for this HTML element, pipe it as a variable with read, and delete the first lines of the file including the line of this HTML element
sed -n '/end of downstreamed content/=' ../site/release-notes/index-part-2.html | (read ; sed -i "1,$REPLY d" ../site/release-notes/index-part-2.html)

cat ../site/release-notes/index-part-1.html ../stage/downstreamed-complete-release-notes-page.html ../site/release-notes/index-part-2.html > ../site/release-notes/index.html

rm ../stage/downstreamed-complete-release-notes-page.html
rm ../site/release-notes/index-part-1.html ../site/release-notes/index-part-2.html
