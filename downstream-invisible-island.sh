#!/bin/bash
#Downstreaming xterm-related pages from Thomas Dickey's https://invisible-island.net/

cd xterm-on-invisible-island

#copy information to be published on xterm.org from the xterm-related pages on https://invisible-island.net/ that are not expected to be updated:
#(This list is for the pages that are to be downloaded only once (or so).)
wget https://invisible-island.net/xterm/xterm.html
wget https://invisible-island.net/xterm/xterm.faq.html
wget https://invisible-island.net/xterm/xterm.icon.html
#
wget https://invisible-island.net/personal/git-exports.html #Xorg libs used by XTerm and apps related to those libs
#
wget https://invisible-island.net/xterm/xtoolkit/xtoolkit.html #X Toolkit links
wget https://github.com/freedesktop/xorg-libXt/commit/85eb751e4e1683af6cee3ee9dce29f74911a639d
wget https://invisible-island.net/xterm/xtoolkit/intrinsics.html
wget https://invisible-island.net/xterm/xtoolkit/intrinsics.pdf
wget https://invisible-island.net/xterm/xtoolkit/manpage-index.html #include all linked pages after the first link because those are separate pages
wget http://www.bitsavers.org/pdf/dec/dtj/dtj_v02-03_1990.pdf #download source

#recurrent downstreaming to fetch updates from https://invisible-island.net/:
#(This list is for the pages that are to be downloaded regularly to fetch updates.)
wget https://invisible-island.net/xterm/manpage/xterm.html
wget https://invisible-island.net/xterm/manpage/uxterm.html
wget https://invisible-island.net/xterm/manpage/koi8rxterm.html
wget https://invisible-island.net/xterm/ctlseqs/ctlseqs-contents.html
wget https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
wget https://invisible-island.net/xterm/xterm.log.html
#
wget https://invisible-island.net/vttest/vttest.html
wget https://invisible-island.net/vttest/CHANGES.html
wget https://invisible-island.net/vttest/CHANGES
#
wget https://invisible-island.net/luit/luit.html
wget https://invisible-island.net/luit/manpage/luit.html #check all links
wget https://invisible-island.net/luit/manpage/luit.txt
wget https://invisible-island.net/luit/manpage/luit.pdf
wget https://invisible-island.net/luit/manpage/luit.ps
#
wget https://invisible-mirror.net/archives/xterm/
wget https://invisible-island.net/archives/vttest/
wget https://invisible-island.net/archives/luit/
#
https://gitlab.freedesktop.org/xorg/lib/libxt #Git repo, not the page
#
https://invisible-island.net/datafiles/release/xterm.tar.gz
https://invisible-island.net/datafiles/release/vttest.tar.gz
https://invisible-island.net/datafiles/release/luit.tar.gz
#
https://invisible-mirror.net/archives/xterm/ #?
