# List prerequisites
# 1. Update local mks docs.
# 2. Update local material theme for mks docs.
# 3. The scipts require Bash.

git switch main
git pull
git switch -c downstream

# run the script that wgets up-to-date XTerm content from invisible-island.net
./get-xterm-related-updates-from-invisible-island-net.sh

# run "the command to build mks docs (see mks docs docs)"
cd ..

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

