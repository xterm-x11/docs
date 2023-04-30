# Copy-pasting

XTerm provides easy and configurable user experience for selecting, copying, and pasting text.

## Selecting text in XTerm

You can easily select text in an XTerm window as you would expect in another application:
* Left-click and drag to select any text.
* Double-click to select a word (default).
* Triple-click to select the whole line (default).

**IMPORTANT** XTerm's X resources enable you to customize how much of text you wish to get selected on multiple clicks, set the time interval limit for multiple clicks, include or exclude the new line, and more. For how to do that, see [Configure](configure.md) and [Customizing copy-paste](customizing-copy-paste.md).

## Copying text in XTerm

By default, XTerm automatically copies every text selection you make, so you don't need to press any keyboard shortcuts (like **Ctrl+C**) or go into any menu (like clicking a **Copy** button), XTerm has copied selected text for you already.

**IMPORTANT** Unconfigured XTerm copies text to the PRIMARY buffer rather than CLIPBOARD that most applications use nowadays. Unless you prefer or need to use the PRIMARY buffer on purpose, it's best that you configure XTerm to copy all text to CLIPBOARD instead. To do that, all you need to do is add the `XTerm.vt100.selectToClipboard: true` X resource to your dotfile. For more information, see [Configure](configure.md) and [Customizing copy-paste](customizing-copy-paste.md).

**TIP** You can configure XTerm to work with keyboard shortcuts to copy text if you can't get used to not having to press any keys to copy. For how to do that, see [Configure](configure.md) and [Customizing copy-paste](customizing-copy-paste.md).

## Pasting text in XTerm

By default, to paste copied text into an XTerm window, use the **Shift+Insert** keyboard shortcut or the middle mouse button.

**TIP** You can set a custom keyboard shortcut for pasting selected text. For how to do that, see [Configure](configure.md) and [Customizing copy-paste](customizing-copy-paste.md).

**TIP** Depending on your system, you should also be able to use the **Shift+Insert** keyboard shortcut (like **Ctrl+V**) for pasting text copied from an XTerm window into another appliction.

**TIP** If your hardware doesn't have the middle mouse button, you might be able to set up emulation to use both the left and right mouse buttons instead of the middle mouse button.

