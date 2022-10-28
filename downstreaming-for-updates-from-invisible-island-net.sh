#!/bin/bash
#Downstreaming xterm-related pages from Thomas Dickey's https://invisible-island.net/

set -e

git checkout -b $(date -I)

cd xterm-on-invisible-island

rm *

# Recurrent downstreaming to fetch updates from https://invisible-island.net/:
# (This list is for the pages that are to be downloaded regularly to fetch updates.)
wget https://invisible-island.net/xterm/manpage/xterm.html
mv xterm.html manpage-xterm.html
wget https://invisible-island.net/xterm/manpage/uxterm.html
mv uxterm.html manpage-uxterm.html
wget https://invisible-island.net/xterm/manpage/koi8rxterm.html
mv koi8rxterm.html manpage-koi8rxterm.html
wget https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
mv ctlseqs.html ctlseqs-guide.html
wget https://invisible-island.net/xterm/ctlseqs/ctlseqs-contents.html
mv ctlseqs-contents.html ctlseqs-list.html
#
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
wget https://invisible-island.net/xterm/manpage/resize.html
wget https://invisible-island.net/xterm/manpage/resize.txt
wget https://invisible-island.net/xterm/manpage/resize.ps
wget https://invisible-island.net/xterm/manpage/resize.pdf
#
wget https://gitlab.freedesktop.org/xorg/lib/libxt #Git repo, not the page
#
wget https://invisible-island.net/datafiles/release/xterm.tar.gz
wget https://invisible-island.net/datafiles/release/vttest.tar.gz
wget https://invisible-island.net/datafiles/release/luit.tar.gz
#
# wget https://invisible-island.net/archives/xterm/ # --level=NUMBER ? Add the `-r` option to wget and test.
# wget https://invisible-island.net/archives/vttest/ # --level=NUMBER ? Add the `-r` option to wget and test.
# wget https://invisible-island.net/archives/luit/ # --level=NUMBER ? Add the `-r` option to wget and test.
#
# See more links to manpages under https://invisible-island.net/xterm/xterm.faq.html#more_info

# Copy the information to be published on xterm.org from the xterm-related pages on https://invisible-island.net/ that are not expected to be updated:
# (This list is for the pages that are to be downloaded only once (or so).)
wget https://invisible-island.net/xterm/xterm.html
wget https://invisible-island.net/xterm/xterm.faq.html
wget https://invisible-island.net/xterm/xterm.icon.html
#
wget https://invisible-island.net/personal/git-exports.html #Xorg libs used by XTerm and apps related to those libs
# https://invisible-island.net/personal/git-exports.html#others # see what can be linked or forked under Other stuff, and where to incorporate it in the docs website
#
wget https://invisible-island.net/xterm/xtoolkit/xtoolkit.html #X Toolkit links
wget https://github.com/freedesktop/xorg-libXt/commit/85eb751e4e1683af6cee3ee9dce29f74911a639d
wget https://invisible-island.net/xterm/xtoolkit/intrinsics.html
wget https://invisible-island.net/xterm/xtoolkit/intrinsics.pdf
wget https://invisible-island.net/xterm/xtoolkit/manpage-index.html #include all linked pages after the first link because those are separate pages
wget http://www.bitsavers.org/pdf/dec/dtj/dtj_v02-03_1990.pdf #download source

git add .

git commit -m "downstreaming at $(date -Iminutes)"

git log -1 --oneline

git push -u origin $(date -I)

git switch main

git branch -D $(date -I)

echo "https://github.com/xterm-x11/docs/pull/new/$(date -I)"

