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
#
https://invisible-island.net/personal/git-exports.html#others # see what can be linked or forked under Other stuff, and where to incorporate it in the docs website
#
https://invisible-mirror.net/archives/xterm/ #?
