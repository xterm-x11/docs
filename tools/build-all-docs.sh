#!/bin/bash
# Prerequisites
#   Download the docs repo: https://github.com/xterm-x11/docs
#   Download the website repo https://github.com/xterm-x11/xterm-x11.github.io
#   The docs repo and the website repo must be at the same directory level so that the script can change directories correctly
#   Update the local mks docs.
#   Update the local material theme for mks docs.
#   The scipts require Bash.


git switch main
git pull
# git switch -c downstream

# run the script that wgets up-to-date XTerm content from invisible-island.net
# ./get-xterm-related-updates-from-invisible-island-net.sh

set -e

git checkout -b website_build_$(date -I)

cd ~/docs/

# run "the command to build mks docs (see mks docs docs)"
# cd ..

mkdocs build

cd tools

# run the script for downstreaming the local copies of the invisible-island.net pages

./downstream-manpage-koi8rterm.sh
./downstream-manpage-luit.sh
./downstream-manpage-resize.sh
./downstream-manpage-uxterm.sh
./downstream-manpage-vttest.sh
./downstream-manpage-xterm.sh
./downstream-release-notes.sh
./get-xterm-related-updates-from-invisible-island-net.sh

git add .

git commit -m "website build at $(date -Iminutes)"

git log -1 --oneline

git push -u origin website_build_$(date -I)

git switch main

git branch -D website_build_$(date -I)

echo "https://github.com/xterm-x11/docs/pull/new/website_build_$(date -I)"

<<comment

./downstream-manpage-koi8rterm.sh && \
./downstream-manpage-luit.sh && \
./downstream-manpage-resize.sh && \
./downstream-manpage-uxterm.sh && \
./downstream-manpage-vttest.sh && \
./downstream-manpage-xterm.sh && \
./downstream-release-notes.sh

comment

<<comment

cd ../../xterm-x11.github.io
git switch main
git pull
git switch -c update
cd -
cp -r ../site/* ../../xterm-x11.github.io
cd ../../xterm-x11.github.io
git add .
git commit -m "website update"
git push -u origin update

comment

# cd ..
# mkdocs serve
# firefox http://127.0.0.1:8000/

