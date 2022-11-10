# Configuring XTerm

This page is under construction.

Conceptually explain the combination of the X resources, the `.Xresources` file, and the `xrdb` command.
    
Make `xrdb -query` the first step of the Configure page (to find out what's there already)

## Checking for the .Xresources file

Make checking (which command? `ls -a .Xresources`?)  for `.Xresources` in the user's home as the first or second step of the Configure page (to check if this file already exists)

Before doing anything regarding the `.Xresources` file, first check if you already have it in your user home directory:

`$ ls -a ~/.Xresources`

If you get `.Xresources`, you already have it and you need to edit its contents to configure XTerm.

If you get `ls: cannot access '.Xresources': No such file or directory`, you need to create that file. To create it, you can download and use the [sample](https://github.com/xterm-x11/files.Xresources/blob/main/sample.Xresources) file (the instructions are inside) or run `$ touch ~/.Xresources` to create a blank one where you can add XTerm configuration lines.

(for the first draft, copy the following content from the .Xresources files (sample, template, draft, etc.))

# procedure: xrdb query

This page is under construction.

To view the applied contents of this file, run `$ xrdb -query`.

# procedure: xrdb -remove > xrdb update

This page is under construction.

1. Update your `~/.Xresources` file.
2. Optional: If you have added or removed lines in `~/.Xresources`, that could cause conflicts or a mix of settings that you might want to be applied. To avoid getting an error message or unexpected results, run `$ xrdb -remove` to remove all Xresources.
3. Run `$ xrdb -merge ~/.Xresources`.
4. Open a new XTerm window to verify that the update has been applied: `$ xterm &`.
