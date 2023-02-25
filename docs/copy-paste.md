# Copy-pasting

## Selecting text in an XTerm window

x

## Configuring which buffer XTerm copies to

The `XTerm.vt100.selectToClipboard:` resource switches the target buffer for copying between the PRIMARY buffer and the CLIPBOARD buffer.

The `false` value is the implicit default and does not need to be explicitly set (you don't need to include this line unless this resource has already been set to `true`):
`XTerm.vt100.selectToClipboard: false`

To switch the target buffer to CLIPBOARD, set this to `true`:
`XTerm.vt100.selectToClipboard: true`

**TIP** If you ever need to switch the target buffer back to PRIMARY, explicitly set it to `false`:
`XTerm.vt100.selectToClipboard: false`

Also see [Configure](configure.md).

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
