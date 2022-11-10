# Configuring XTerm

Almost all of XTerm's configuration is kept as [X resources](https://wiki.archlinux.org/title/X_resources) in the `~/.Xresources` dotfile.

To configure XTerm on a system, simply download or create and edit your `~/.Xresources` dotfile, and then run the `xrdb` command to apply the X resources from your `~/.Xresources` dotfile. See the next sections for step-by-step instructions.

## Checking for the ~/.Xresources dotfile

Before doing anything regarding the `~/.Xresources` dotfile, first check if you already have it in the system's user home directory:

`$ ls -a ~/.Xresources`

- If you get `.Xresources`, that dotfile is already there, and you just need to edit it to configure XTerm.

- If you get `ls: cannot access '.Xresources': No such file or directory`, you need to create that dotfile.

TIP: To create the `~/.Xresources` dotfile, you can download and use the [sample](https://github.com/xterm-x11/files.Xresources/blob/main/sample.Xresources) file, which is recommended (further instructions are inside that file). Alternatively, you can run `$ touch ~/.Xresources` to create a blank one where you can add XTerm configuration lines.

## Checking the latest applied X resources

Run `$ xrdb -query` to view the latest applied X resources, such as contents of the `~/.Xresources` dotfile.

## Updating the ~/.Xresources dotfile

1. Add or remove the lines or edit the values in your `~/.Xresources` dotfile.
2. Optional (highly recommended): Run `$ xrdb -remove` to clear all previously applied X resources and thus avoid getting a mix of old and new parameters and values.
3. Run `$ xrdb -merge ~/.Xresources`. (If you get any error messages in the output, edit the `~/.Xresources` file to resolve the errors.)
4. Optional (when you need to check): Run `$ xrdb -query` to view the latest applied X resources.
5. Open a new XTerm window to verify that the update has been applied: `$ xterm &`.

## Additional resources

Run `$ xrdb -help` or see the [xrdb](https://www.x.org/releases/X11R7.7/doc/man/man1/xrdb.1.xhtml) manpage.
