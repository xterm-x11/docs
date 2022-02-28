# Installing XTerm on GNU/Linux by using a package manager

A long yet incomplete list of the XTerm packages across various GNU/Linux distributions is available at [pkgs.org](https://pkgs.org/download/xterm).

Here are the XTerm installation commands for some distributions:

## Arch Linux

The CLI command for installing XTerm from a package by using [Pacman](https://wiki.archlinux.org/title/Pacman) on [Arch Linux](https://archlinux.org/):

`pacman -Syu xterm`

<!-- source: https://bbs.archlinux.org/viewtopic.php?id=242823 -->

> For the XTerm package info, see https://archlinux.org/packages/extra/x86_64/xterm/.

> *archlinux.org* provides a very helpful page on installing and getting started with XTerm: https://wiki.archlinux.org/title/Xterm.

## Debian

The CLI command for installing XTerm from a package by using [APT](https://packages.debian.org/sid/apt) on [Debian](https://www.debian.org/):

`sudo apt-get install xterm`

> For the XTerm package info, see [Exact hits: Package xterm](https://packages.debian.org/search?searchon=names&keywords=xterm) > your Debian version > see *Architecture* in the *Download xterm* table.

<!-- https://www.debian.org/releases/ -->

## Ubuntu

The CLI command for installing XTerm from a package on [Ubuntu](https://ubuntu.com/server/docs/package-management/):

`sudo apt install xterm`

> For the XTerm package info, go to your Ubuntu version at [packages.ubuntu.com](https://packages.ubuntu.com/) > **X Window System software** > [Ctrl+F] > enter `xterm` > see *Architecture* in the *Download xterm* table.

<!--
//https://packages.ubuntu.com/search?keywords=xterm
//https://packages.ubuntu.com/search?arch=i386&keywords=xterm

//* link:https://linuxmint.com/[Linux Mint]: ??? `sudo apt install xterm`
-->

## Fedora/CentOS/RHEL

The CLI command for installing XTerm from a package by using [DNF](https://docs.fedoraproject.org/en-US/fedora/rawhide/system-administrators-guide/package-management/DNF/) on [Fedora](https://getfedora.org/), [CentOS](https://www.centos.org/), or [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux):

`sudo dnf install xterm.x86_64`

> For the XTerm package info, see Fedora Package Sources: https://src.fedoraproject.org/rpms/xterm.

<!--
## openSUSE/SUSE Linux Enterprise

The command for installing XTerm from a package by using [Zypper](https://doc.opensuse.org/documentation/leap/reference/html/book-reference/cha-sw-cl.html#sec-zypper) on a command line on [openSUSE](https://www.opensuse.org/) or [SUSE Linux Enterprise products](https://www.suse.com/products/):

`zypper install xterm`

> For the XTerm package info, see https://software.opensuse.org/package/xterm.

> Another page on XTerm: https://en.opensuse.org/Xterm.

//https://en.opensuse.org/images/1/17/Zypper-cheat-sheet-1.pdf
//Note to Max re https://en.opensuse.org/Xterm: (invisible-island.net links are broken and man page is off another website) updated in 2015, it's a wiki, so Max can update when he finds time.
//FYI potential sources of confusion: https://packagehub.suse.com/search/?q=xterm

-->

## Not featured?

Does your GNU/Linux distribution have an XTerm package available but not mentioned on this page? If so, please open an issue at [xterm-x11/docs](https://github.com/xterm-x11/docs/issues) and submit the instructions or a demo about how to install XTerm on your distribution!