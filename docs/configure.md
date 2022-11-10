# Configuring XTerm

This page is under construction.

Conceptually explain the combination of the X resources, the `.Xresources` file, and the `xrdb` command.
    
Make `xrdb -query` the first step of the Configure page (to find out what's there already)

## Checking for the .Xresources file

Make checking (which command? `ls -a .Xresources`?)  for `.Xresources` in the user's home as the first or second step of the Configure page (to check if this file already exists)

Before doing anything regarding the `.Xresources` file, first check if you already have it in your user's home directory:

```
$ ls -a ~/.Xresources

```
If you get `.Xresources`, you already have it and you need to edit its contents to configure XTerm.

If you get `ls: cannot access '.Xresources': No such file or directory`, you need to create that file. To create it, you can download and use the (sample)[https://github.com/xterm-x11/files.Xresources/blob/main/sample.Xresources] file (the instructions are inside) or run `$ touch ~/.Xresources`.


(for the first draft, copy the following content from the .Xresources files (sample, template, draft, etc.))

# procedure: xrdb update ...

This page is under construction.

# procedure: xrdb query

This page is under construction.

# procedure: xrdb -remove > xrdb update

This page is under construction.
