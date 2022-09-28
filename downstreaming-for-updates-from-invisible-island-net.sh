#!/bin/bash
#Downstreaming xterm-related pages from Thomas Dickey's https://invisible-island.net/

cd xterm-on-invisible-island

#recurrent downstreaming to fetch updates from https://invisible-island.net/:
#(This list is for the pages that are to be downloaded regularly to fetch updates.)
wget https://invisible-island.net/xterm/manpage/xterm.html
mv xterm.html manpage-xterm.html
wget https://invisible-island.net/xterm/manpage/uxterm.html
mv uxterm.html manpage-uxterm.html
wget https://invisible-island.net/xterm/manpage/koi8rxterm.html
mv koi8rxterm.html manpage-koi8rxterm.html
wget https://invisible-island.net/xterm/ctlseqs/ctlseqs-contents.html
mv ctlseqs-contents.html ctlseqs-list.html
wget https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
mv ctlseqs-contents.html ctlseqs-guide.html
wget https://invisible-island.net/xterm/xterm.log.html
#
wget https://invisible-island.net/vttest/vttest.html
wget https://invisible-island.net/vttest/CHANGES.html
wget https://invisible-island.net/vttest/CHANGES
#
wget https://invisible-island.net/xterm/xft/xft.html # looks like a manpage, but better check
#
wget https://invisible-island.net/xterm/xcursor/xcursor.html # looks like a manpage, but better check
#
wget https://invisible-island.net/luit/manpage/luit.html #check all links
mv luit.html manpage-luit.html
wget https://invisible-island.net/luit/manpage/luit.txt
wget https://invisible-island.net/luit/manpage/luit.pdf
wget https://invisible-island.net/luit/manpage/luit.ps
wget https://invisible-island.net/luit/luit.html
#
wget https://invisible-mirror.net/archives/xterm/
wget https://invisible-island.net/archives/vttest/
wget https://invisible-island.net/archives/luit/
#
wget https://invisible-island.net/xterm/manpage/resize.html
wget https://invisible-island.net/xterm/manpage/resize.txt
wget https://invisible-island.net/xterm/manpage/resize.ps
wget https://invisible-island.net/xterm/manpage/resize.pdf
#
https://gitlab.freedesktop.org/xorg/lib/libxt #Git repo, not the page
#
https://invisible-island.net/datafiles/release/xterm.tar.gz
https://invisible-island.net/datafiles/release/vttest.tar.gz
https://invisible-island.net/datafiles/release/luit.tar.gz
#
https://invisible-mirror.net/archives/xterm/ #?
#
# see more links under https://invisible-island.net/xterm/xterm.faq.html#more_info
