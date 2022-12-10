# XTerm

*Developed and maintained since 1986.*

XTerm is the terminal emulator for the X Window System (X.org).

## Why use XTerm?

* Developed for the X Window System that is time-tested and available across Linux and UNIX systems.
* Packages available on most Linux and UNIX systems.
* Hundreds of community color themes, with 256 color support and easy color theme creation.
* Configured in a simple config file: Download, upload, and back up your configuration as a single file. Easy-to-read, single-line parameters and values. Easy-to-understand configuration steps for novice terminal users.
* One of the faster terminal emulators.
* Powerline support.
* Unicode support.


This page is under construction.

https://invisible-island.net/xterm/xterm.faq.html#what_is_it
<p>From the manual page:</p>

  <blockquote class="code-block">
    <p>The xterm program is a terminal emulator for the X Window
    System. It provides DEC VT102/VT220 and selected features from
    higher-level terminals such as VT320/VT420/VT520 (VTxxx). It
    also provides Tektronix 4014 emulation for programs that cannot
    use the window system directly. If the underlying operating
    system supports terminal resizing capabilities (for example,
    the SIGWINCH signal in systems derived from 4.3bsd), xterm will
    use the facilities to notify programs running in the window
    whenever it is resized.</p>
  </blockquote>

  <p>That is, xterm (pronounced "<em>eks</em>-term") is a
  <em>specific</em> program, not a generic item. It is the standard
  X terminal emulator program.</p>

  <p>This FAQ presents various useful bits of information for both
  the specific program as well as other programs that imitate
  it.</p>

  <p>As a stylistic convention, the capitalized form is
  <em>"XTerm"</em>, which corresponds to the X resource class name.
  Similarly, <em>uxterm</em> becomes <em>"UXTerm"</em>.</p>

---

From the manual page:

```
The xterm program is a terminal emulator for the X Window System. It provides DEC VT102/VT220 and selected features from higher-level terminals such as VT320/VT420/VT520 (VTxxx). It also provides Tektronix 4014 emulation for programs that cannot use the window system directly. If the underlying operating system supports terminal resizing capabilities (for example, the SIGWINCH signal in systems derived from 4.3bsd), xterm will use the facilities to notify programs running in the window whenever it is resized.
```

That is, xterm (pronounced "*eks*-term") is a *specific* program, not a generic item. It is the standard X terminal emulator program.

This FAQ presents various useful bits of information for both the specific program as well as other programs that imitate it.

As a stylistic convention, the capitalized form is "*XTerm*", which corresponds to the X resource class name. Similarly, *uxterm* becomes "*UXTerm*".

https://invisible-island.net/xterm/#synopsis

  <p>The <strong>xterm</strong> program is a terminal emulator for
  the X Window System. It was originally developed in the mid-1980s
  to provide DEC VT102 and Tektronix 4014 compatible terminals for
  programs that cannot use the window system directly.</p>

  <p>Each <strong>xterm</strong> window runs as a separate process.
  Some may run on remote machines, using the X protocol to display
  on a local machine, while others may run and display on the same
  local machine. X allows applications to update their windows
  independently, but the local machine's keyboard and mouse are
  shared, i.e., only delivering input events to the window which
  currently has <em>focus</em>.</p>

  <p>This version implements ISO/ANSI colors using the "new"
  <a href="/ncurses/ncurses-slang.html#cause_bce">color model</a>
  (i.e., background color erase). It also implements most of the
  control sequences for VT220, as well as selected features from
  other DEC terminals such as VT320, VT420 and VT520.</p>
  
---

The **xterm** program is a terminal emulator for the X Window System. It was originally developed in the mid-1980s to provide DEC VT102 and Tektronix 4014 compatible terminals for programs that cannot use the window system directly.

Each **xterm** window runs as a separate process. Some may run on remote machines, using the X protocol to display on a local machine, while others may run and display on the same local machine. X allows applications to update their windows independently, but the local machine's keyboard and mouse are shared, i.e., only delivering input events to the window which currently has *focus*.

This version implements ISO/ANSI colors using the "new" color model (i.e., background color erase). It also implements most of the control sequences for VT220, as well as selected features from other DEC terminals such as VT320, VT420 and VT520.

----
link from 'color model' to https://invisible-island.net/ncurses/ncurses-slang.html#cause_bce

