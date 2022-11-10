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

## Checking the currently applied Xresources

Run `$ xrdb -query` to view the latest applied Xresources, such as contents of the `~/.Xresources` file.

## Updating the .Xresources file

1. Add or remove the lines or edit the values in your `~/.Xresources` file.
2. Optional but recommended: Run `$ xrdb -remove` to clear all previously applied Xresources. (This ensures you won't get conflicts or a mix of applied both old and new properties or values.)
3. Run `$ xrdb -merge ~/.Xresources`. (If you get any error messages in the output, edit the `~/.Xresources` file to resolve the errors.)
4. Optional when you need to check: Run `$ xrdb -query` to view the latest applied Xresources.
5. Open a new XTerm window to verify that the update has been applied: `$ xterm &`.

## Additional resources

Run `$ xrdb -help` or see the [xrdb](https://www.x.org/releases/X11R7.7/doc/man/man1/xrdb.1.xhtml) manpage.
