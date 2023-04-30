# Copy-pasting

AI:
Add `XTerm.vt100.selectToClipboard: true` to the sample file.
Add `XTerm.vt100.selectToClipboard: true` to the template file.
Add a statement that `XTerm.vt100.selectToClipboard: true` is added to the sample file.

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
I understand that these are translations, but I don't understand these two lines ^.
+
Further reading about translations (suggested by Thomas in https://unix.stackexchange.com/a/293904):  
    [Chapter 10. Translation Management (X Toolkit Intrinsics - C Language Interface)](https://www.x.org/releases/X11R7.7/doc/libXt/intrinsics.html#Translation_Management)
    [Appendix B. Translation Table Syntax (X Toolkit Intrinsics - C Language Interface)](https://www.x.org/releases/X11R7.7/doc/libXt/intrinsics.html#Translation_Table_Syntax)

https://wiki.archlinux.org/title/Xterm#Copy_and_paste
+
https://wiki.archlinux.org/title/Xterm#PRIMARY_and_CLIPBOARD
+
https://wiki.archlinux.org/title/Clipboard


## Selecting text in an XTerm window

- [ ] read all of https://invisible-island.net/xterm/manpage/xterm.html#h2-POINTER-USAGE
and mention most important info from it

The default behavior in XTerm is every selection gets copied automatically, so you don't need to press any keyboard shortcuts (like **Ctrl+C**) or go into any menu (like clicking a **Copy** button).

XTerm offers up to four different types of selection by multiple clicks using the left mouse (or trackpad) button. Each type of selection is set as an X resource.

### Selection defaults

Here are the implicit defaults:

`XTerm*on2Clicks:` `word`

`XTerm*on3Clicks:` `line`

`XTerm*on4Clicks:` (inactive)

`XTerm*on5Clicks:` (inactive)

MOVE THE FOLLOWING SECTION INTO THE CUSTOMIZE PAGES OF THE DOCS?
WHAT'S THE DIFFERENCE BETWEEN CONFIGURING AND CUSTOMIZING?
IS CONFIGURING PART OF THE DEFAULTS PAGE AND SHOULD THE INTRO PAGE BE CONSIDERED A DEFAULTS PAGE?
(IF SO, THEN DELETE "### Selection defaults" ABOVE)
### Customizing selections

You can customize selections in XTerm. For the X resources `XTerm*on2Clicks:`, `XTerm*on3Clicks:`, `XTerm*on4Clicks:`, `XTerm*on5Clicks:`, you can set custom selections by specifying any of the following values (as written in XTerm's manpage):

* `word`
* `line`
* `group`
* `page`
* `all`
* `regex`
* `none`

XTerm offers some further customizations of selections through additional X resources, including the following:

* `XTerm*multiClickTime:` `250` (implicit default is `250` milliseconds)

* `XTerm*cutNewline:` `true` or `false` (implicit default is `true`)

* `XTerm*cutToBeginningOfLine:` `true` or `false` (implicit default is `true`)
   TEST AND EXPLORE AND REWRITE AS NEEDED: Requires the X resource for that number of clicks to be set to `line`, for example: `XTerm*on3Clicks: line`.
   
For more information, see XTerm's manpage for explanations of these parameters in the section on [pointer usage](https://invisible-island.net/xterm/manpage/xterm.html#h2-POINTER-USAGE).


## Configuring which buffer XTerm copies to

The `XTerm.vt100.selectToClipboard:` resource switches the target buffer for copying between the PRIMARY buffer and the CLIPBOARD buffer.

To switch the target buffer to CLIPBOARD, set this to `true`:
`XTerm.vt100.selectToClipboard: true`

**NOTE** The `false` value is the implicit default and does not need to be explicitly set (you don't need to include this line unless this resource has already been set to `true`):
`XTerm.vt100.selectToClipboard: false`

**TIP** If you ever need to switch the target buffer back to PRIMARY, either remove the `XTerm.vt100.selectToClipboard:` resource or explicitly set it to `XTerm.vt100.selectToClipboard: false`.

From XTerm's manpage:

       selectToClipboard (class SelectToClipboard)
               Tells xterm whether to use the PRIMARY or CLIPBOARD for SELECT
               tokens in the selection mechanism.  The set-select action can
               change this at runtime, allowing the user to work with programs
               that handle only one of these mechanisms.  The default is
               "false", which tells it to use PRIMARY. [Source](https://invisible-island.net/xterm/manpage/xterm.html)

## Keyboard shortcuts

The default keyboard shortcut to pasting from CLIPBOARD and PRIMARY into an XTerm window is to press **Shift+Insert**.

**NOTE** **Shift+Insert** is the default regardless of whether you set `XTerm.vt100.selectToClipboard: to `false` or to `true`.

You can combine the `XTerm.vt100.selectToClipboard:` resource with the translations for setting custom keyboard shortcuts:
```
xterm*VT100*translations: #override \n\
   Ctrl Shift <Key>C:  copy-selection(SELECT) \n\
   Ctrl Shift <Key>V:  insert-selection(SELECT)
```
+
- [ ] EXPLAIN WHY SHIFT ABOVE ^

Also see [Configure](configure.md).


CONTINUE REWRITING THE BELOW SECTIONS

## Copying text in an XTerm window

**TIP** With both `false` and `true`, you can select text to have XTerm automatically copy it to PRIMARY for pasting in an XTerm window.

The `false` value means that any text you select in an XTerm window is automatically copied to PRIMARY, which means you don't need to press any key to copy the selected text.

REWRITE The `true` value enables you to copy text you select in an XTerm window to CLIPBOARD for subsequent pasting in both XTerm and other applications.

## Pasting text from XTerm in another application

**TIP** With both `false` and `true`, you can paste the text copied from an XTerm window (to PRIMARY or CLIPBOARD) into another application by pressing **Shift+Insert**.

To paste text that you copied in an XTerm window to PRIMARY, use the **Shift+Insert** keyboard shortcut or the middle mouse button or EMULATION? (might still be useful as a TIP, but also not useful in some laptops).

 ^v Clearly define the defaults and differentiate any custom settings like `vt100.Translations`.

To paste text that you copied in an XTerm window to CLIPBOARD, use the standard pasting method for that application like the **Ctrl+V** keyboard shortcut or a menu selection.

## Pasting text from XTerm in XTerm

You can paste copied text from an XTerm window in the same XTerm window or other XTerm window.

 ^v Clearly define the defaults and differentiate any custom settings like `vt100.Translations`.
 
Regardless of which buffer you're pasting text from (PRIMARY or CLIPBOARD) into an XTerm window, use the **Shift+Insert** keyboard shortcut or the middle mouse button.

## Advanced options

Copy the selected options from the manpage and incorporate into the above sections as subsections.

## WIP

*

Investigate and see the full comment:
"If you want to retain support for PRIMARY and still be able to use the CLIPBOARD"
https://askubuntu.com/a/1203478
ignore the question;

* https://www.davidsimmons.com/soft/xtermhacks/#copynpaste

`xterm*VT100.translations: #override <Btn1Up>: select-end(PRIMARY, CLIPBOARD, CUT_BUFFER0)`

NOTE: This is mutually exclusive, that is does not work in combination, with the following:
```
xterm*VT100*translations: #override \n\
   Ctrl Shift <Key>C:  copy-selection(SELECT) \n\
   Ctrl Shift <Key>V:  insert-selection(SELECT)
```
source1: https://www.reddit.com/r/archlinux/comments/7z9f2r/comment/dunkvn6/?utm_source=share&utm_medium=web2x&context=3
source2: https://askubuntu.com/a/1300290

*

Look up mouse button emulation installation and add a TIP.
+
[the middle mouse button ... which is usually emulated as simultaneously clicking both buttons on a two-button mouse. ... if middle mouse button emulation is enabled. Middle mouse button is clicking the mouse wheel nowadays.
source: https://www.reddit.com/r/archlinux/comments/7z9f2r/comment/dunk7nv/?utm_source=share&utm_medium=web2x&context=3

*

How to mention the these?

- Mention use of clipboard managers.
    > I would like to be able to copy and paste from any app using the global clipboard
    "You might need a clipboard manager for that."
    https://wiki.archlinux.org/title/Clipboard#List_of_clipboard_managers
    source: https://www.reddit.com/r/archlinux/comments/7z9f2r/comment/dumb4sc/?utm_source=share&utm_medium=web2x&context=3
- "The `xcb` program also provides command-line access to the cut buffers."
    source: https://askubuntu.com/a/541730
- suggestion to install parcellite
    https://unix.stackexchange.com/a/225071

*

https://unix.stackexchange.com/questions/227701/how-to-use-ctrl-insert-to-copy-from-xterm

*

(if not already listed above): https://invisible-island.net/xterm/manpage/xterm.html#h3-Custom-Key-Bindings

```
       Here is an example which uses shifted select/paste to copy to the
       clipboard, and unshifted select/paste for the primary selection.  In
       each case, a (different) cut buffer is also a target or source of the
       select/paste operation.  It is important to remember however, that cut
       buffers store data in ISO-8859-1 encoding, while selections can store
       data in a variety of formats and encodings.  While xterm owns the
       selection, it highlights it.  When it loses the selection, it removes
       the corresponding highlight.  But you can still paste from the
       corresponding cut buffer.

           *VT100*translations:    #override \n\
              ~Shift~Ctrl<Btn2Up>: insert-selection(PRIMARY, CUT_BUFFER0) \n\
               Shift~Ctrl<Btn2Up>: insert-selection(CLIPBOARD, CUT_BUFFER1) \n\
              ~Shift     <BtnUp> : select-end(PRIMARY, CUT_BUFFER0) \n\
               Shift     <BtnUp> : select-end(CLIPBOARD, CUT_BUFFER1)

       In the example, the class name VT100 is used rather than the widget
       name.  These are different; a class name could apply to more than one
       widget.  A leading "*" is used because the widget hierarchy above the
       vt100 widget depends on whether the toolbar support is compiled into
       xterm.

```
>>>>
It worked as follows:
```
! xterm*VT100.translations: #override <Btn1Up>: select-end(PRIMARY, CLIPBOARD, CUT_BUFFER0)
! is mutually exclusive with:
xterm*VT100*translations: #override \n\
   Ctrl Shift <Key>C:  copy-selection(SELECT) \n\
   Ctrl Shift <Key>V:  insert-selection(SELECT)
Should I test the corresponding mouse buttons next?
```
I am yet to test the Shift+<BtnUp> combinations.

Also, I just realized that there is possibly an alternative syntax re <KeyPress> that I must also test. Now I've tested it and confirm it to work:
```
XTerm*VT100.Translations:       #override\n\
Shift Ctrl <KeyPress> v: insert-selection(CLIPBOARD)\n\
Shift Ctrl <KeyPress> c: copy-selection(CLIPBOARD)\n
```
or using the alternative syntax:
```
XTerm.vt100.Translations:       #override\n\
```
or using the alternative syntax:
```
Shift Ctrl <Key>V: insert-selection(CLIPBOARD)\n\
Shift Ctrl <Key>C: copy-selection(CLIPBOARD)\n
```
*

### Additional resources

- [Clipboard](https://wiki.archlinux.org/title/Clipboard)
- [Cut-and-paste in X](https://specifications.freedesktop.org/clipboards-spec/clipboards-latest.txt)
- [X Selections, Cut Buffers, and Kill Rings](https://www.jwz.org/doc/x-cut-and-paste.html)
- [X11: How does “the” clipboard work?](https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html)
- [X Window selection](https://en.wikipedia.org/wiki/X_Window_selection)
- [Peer-to-Peer Communication by Means of Selections](https://tronche.com/gui/x/icccm/sec-2.html#s-2)

