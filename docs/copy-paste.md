# Copy-pasting

overview of selectToClipboard, menu, and translations: by Thomas https://unix.stackexchange.com/a/293856

translations
answer by Thomas https://unix.stackexchange.com/a/293904
 also by Thomas https://unix.stackexchange.com/a/293856
https://unix.stackexchange.com/a/624719
https://unix.stackexchange.com/a/227707
https://unix.stackexchange.com/a/225076
+
 INCORPORATE/MIGRATE: [Why can't I select/paste to/from other programs? (xterm FAQ)](http://invisible-island.net/xterm/xterm.faq.html#xterm_select_clipboard) IN IT:
 ```
Since patch #209 (2006), xterm has provided a workaround: a menu entry (and resource selectToClipboard) which changes xterm's behavior for a special token SELECT in its default translations. If the resource is true (or the menu item enabled), xterm provides its selection to the CLIPBOARD. A menu item is provided, of course, since many applications follow the ICCM. In the default translations, these lines use SELECT:

    Shift <KeyPress> Select:select-cursor-start() \
                               select-cursor-end(SELECT, CUT_BUFFER0) \n\
    Shift <KeyPress> Insert:insert-selection(SELECT, CUT_BUFFER0) \n\
```
+
Further reading about translations (suggested by Thomas in https://unix.stackexchange.com/a/293904):  
    [Chapter 10. Translation Management (X Toolkit Intrinsics - C Language Interface)](https://www.x.org/releases/X11R7.7/doc/libXt/intrinsics.html#Translation_Management)
    [Appendix B. Translation Table Syntax (X Toolkit Intrinsics - C Language Interface)](https://www.x.org/releases/X11R7.7/doc/libXt/intrinsics.html#Translation_Table_Syntax)

Investigate and see the full comment:
"If you want to retain support for PRIMARY and still be able to use the CLIPBOARD"

https://askubuntu.com/a/1203478
ignore the question;

https://wiki.archlinux.org/title/Xterm#Copy_and_paste
+
https://wiki.archlinux.org/title/Xterm#PRIMARY_and_CLIPBOARD
+
https://wiki.archlinux.org/title/Clipboard

https://www.davidsimmons.com/soft/xtermhacks/#copynpaste

suggestion to install parcellite
https://unix.stackexchange.com/a/225071

## Selecting text in an XTerm window

- [ ] read all of https://invisible-island.net/xterm/manpage/xterm.html#h2-POINTER-USAGE
and mention most important info from it

`XTerm*on2Clicks:` `word` or `line` or `group` or `page` or `all` or `regex` or `none` (implicit default is `word`)

`XTerm*on3Clicks:` `word` or `line` or `group` or `page` or `all` or `regex` or `none` (implicit default is `line`)

If `XTerm*on3Clicks: line`, then:

> `XTerm*cutNewline:` `true` or `false` (implicit default is `true`)

> `XTerm*cutToBeginningOfLine:` `true` or `false` (implicit default is `true`)

`XTerm*on4Clicks:` `word` or `line` or `group` or `page` or `all` or `regex` or `none` (inactive by default)

`XTerm*on5Clicks:` `word` or `line` or `group` or `page` or `all` or `regex` or `none` (inactive by default)

`XTerm*multiClickTime:` `250` (implicit default is `250` milliseconds)

See XTerm's manpage for explanations of these parameters in the section on [pointer usage](https://invisible-island.net/xterm/manpage/xterm.html#h2-POINTER-USAGE)



## Configuring which buffer XTerm copies to

The `XTerm.vt100.selectToClipboard:` resource switches the target buffer for copying between the PRIMARY buffer and the CLIPBOARD buffer.

The `false` value is the implicit default and does not need to be explicitly set (you don't need to include this line unless this resource has already been set to `true`):
`XTerm.vt100.selectToClipboard: false`

To switch the target buffer to CLIPBOARD, set this to `true`:
`XTerm.vt100.selectToClipboard: true`

**TIP** If you ever need to switch the target buffer back to PRIMARY, explicitly set it to `false`:
`XTerm.vt100.selectToClipboard: false`

Also see [Configure](configure.md).

From XTerm's manpage:

       selectToClipboard (class SelectToClipboard)
               Tells xterm whether to use the PRIMARY or CLIPBOARD for SELECT
               tokens in the selection mechanism.  The set-select action can
               change this at runtime, allowing the user to work with programs
               that handle only one of these mechanisms.  The default is
               "false", which tells it to use PRIMARY. [Source](https://invisible-island.net/xterm/manpage/xterm.html)


## Copying text in an XTerm window

**TIP** With both `false` and `true`, you can select text to have XTerm automatically copy it to PRIMARY for pasting in an XTerm window, that is without pressing **Ctrl+C**.

### `false`

The `false` value means that any text you select in an XTerm window is automatically copied to PRIMARY, which means you don't need to press any key to copy the selected text.

With `false`, you are unable to use the **Ctrl+C** keyboard shortcut.

### `true`

The `true` value enables you to also be able to use the **Ctrl+C** keyboard shortcut to copy text you select in an XTerm window to CLIPBOARD for subsequent pasting in both XTerm and other applications.

When you press **Ctrl+C**, the command-line output is **^C**.

## Pasting text from XTerm in another application

**TIP** With both `false` and `true`, you can paste the text copied from an XTerm window (to PRIMARY or CLIPBOARD) into another application by pressing **Shift+Insert**.

### `false`

Use the middle mouse button or the **Shift+Insert** keyboard shortcut to paste text that you copied in an XTerm window to PRIMARY.

### `true`

Use the **Ctrl+V** to paste text that you copied in an XTerm window to CLIPBOARD.

## Pasting text from XTerm in XTerm

You can paste copied text from an XTerm window in the same XTerm window or other XTerm window.

Regardless of which buffer you're pasting text from (PRIMARY or CLIPBOARD) into an XTerm window, use the middle mouse button or the **Shift+Insert** keyboard shortcut.

## Advanced options

Copy the selected options from the manpage and incorporate into the above sections as subsections.

## WIP

* 

`xterm*VT100.translations: #override <Btn1Up>: select-end(PRIMARY, CLIPBOARD, CUT_BUFFER0)`
`XTerm*VT100.translations: #override <Btn1Up>: select-end(PRIMARY, CLIPBOARD, CUT_BUFFER0)`

source1: https://www.reddit.com/r/archlinux/comments/7z9f2r/comment/dunkvn6/?utm_source=share&utm_medium=web2x&context=3
source2: https://askubuntu.com/a/1300290

*

This doesn't work: "Paste with Ctrl+Shift+v Copy with Ctrl+Shift+c"
source: https://www.reddit.com/r/archlinux/comments/7z9f2r/comment/dunczk3/?utm_source=share&utm_medium=web2x&context=3

*

[the middle mouse button ... which is usually emulated as simultaneously clicking both buttons on a two-button mouse. ... if middle mouse button emulation is enabled. Middle mouse button is clicking the mouse wheel nowadays.
source: https://www.reddit.com/r/archlinux/comments/7z9f2r/comment/dunk7nv/?utm_source=share&utm_medium=web2x&context=3

*

> I would like to be able to copy and paste from any app using the global clipboard
"You might need a clipboard manager for that."
https://wiki.archlinux.org/title/Clipboard#List_of_clipboard_managers
source: https://www.reddit.com/r/archlinux/comments/7z9f2r/comment/dumb4sc/?utm_source=share&utm_medium=web2x&context=3

*

"The `xcb` program also provides command-line access to the cut buffers."
source: https://askubuntu.com/a/541730

*

https://unix.stackexchange.com/questions/227701/how-to-use-ctrl-insert-to-copy-from-xterm


### Additional resources

- [Clipboard](https://wiki.archlinux.org/title/Clipboard)
- [Cut-and-paste in X](https://specifications.freedesktop.org/clipboards-spec/clipboards-latest.txt)
- [X Selections, Cut Buffers, and Kill Rings](https://www.jwz.org/doc/x-cut-and-paste.html)
- [X11: How does “the” clipboard work?](https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html)
- [X Window selection](https://en.wikipedia.org/wiki/X_Window_selection)
- [Peer-to-Peer Communication by Means of Selections](https://tronche.com/gui/x/icccm/sec-2.html#s-2)

