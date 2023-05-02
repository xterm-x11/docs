author: Max Leonov

# Copy-pasting

## Selecting text in XTerm

You can easily select text in an XTerm window as you would expect in another application:
* Left-click and drag to select any text.
* Double-click to select a word.
* Triple-click to select the whole line.

**IMPORTANT** XTerm's X resources enable you to configure how much of text you wish to get selected on multiple clicks, adjust the clicking speed (as time interval) for multiple clicks, include or exclude the new line, and more. For more information, see [Configure](configure.md) and [Customize copy-paste](customize-copy-paste.md).

## Copying text in XTerm

By default, XTerm automatically copies every text selection you make in an XTerm window. You don't need to press any keyboard shortcuts (like **Ctrl+C**) or go into any menu (like clicking a **Copy** button). XTerm has already copied the selected text.

**IMPORTANT** Unconfigured XTerm copies text to the PRIMARY buffer rather than CLIPBOARD that most applications use nowadays. Unless you prefer or need to use the PRIMARY buffer on purpose, it's best that you configure XTerm to copy all text to CLIPBOARD instead. To do that, all you need to do is add the `XTerm.vt100.selectToClipboard: true` X resource to your dotfile. For more information, see [Configure](configure.md) and [Customize copy-paste](customize-copy-paste.md).

**TIP** You can configure XTerm to work with a keyboard shortcut to copy text if you can't get used to the convenience of not having to press any keys to copy. For how to set a custom keyboard shortcut, see [Configure](configure.md) and [Customize copy-paste](customize-copy-paste.md).

## Pasting text in XTerm

By default, to paste copied text into an XTerm window, use the **Shift+Insert** keyboard shortcut or the middle mouse button (if your mouse or trackpad has one).

**TIP** You can set a custom keyboard shortcut for pasting selected text. For how to do that, see [Configure](configure.md) and [Customize copy-paste](customize-copy-paste.md).

**TIP** Depending on your system, you should be able to use the **Shift+Insert** keyboard shortcut for pasting text copied from an XTerm window into other applications (like **Ctrl+V**). If you stick with using the **Shift+Insert** keyboard shortcut in XTerm, it's easier to remember and more convenient to use this same shortcut every time you paste text copied to or from XTerm.

**TIP** If your hardware doesn't have the middle mouse button, you might be able to set up emulation to use both the left and right mouse buttons instead of the middle mouse button.
