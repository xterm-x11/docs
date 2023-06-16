# List prerequisites
# 1. Update local mks docs.
# 2. Update local material theme for mks docs.
# 3. The scipts require Bash.

git switch main
git pull
git switch -c downstream

# run the script that wgets up-to-date XTerm content from invisible-island.net
get-xterm-related-updates-from-invisible-island-net.sh

# run "the command to build mks docs (see mks docs docs)"
cd ..

mkdocs build

cd tools

# run the script for downstreaming xterm.log.html
downstream-release-notes.sh

# run the script for downstreaming a.html

# run the script for downstreaming b.html

# run the script for downstreaming c.html

cd ..

mkdocs serve

firefox http://127.0.0.1:8000/

