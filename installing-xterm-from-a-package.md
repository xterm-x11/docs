<!-- 
// top menu
// 'Install'
// _'Package' = this page
// _'xterm.tar.gz'
-->
 
# XTerm installation commands for some Linux distributions

You can easily and quickly install XTerm on a command line on most GNU/Linux distributions by using a package manager.

Here are the command line interface (CLI) commands for installing XTerm on some distributions:

## Arch Linux

The CLI command for installing XTerm from a package by using [Pacman](https://wiki.archlinux.org/title/Pacman) on [Arch Linux](https://archlinux.org/):

`pacman -Syu xterm`

<!-- source: https://bbs.archlinux.org/viewtopic.php?id=242823 -->

> For the XTerm package info, see https://archlinux.org/packages/extra/x86_64/xterm/.

> *archlinux.org* provides a very helpful page on installing and getting started with XTerm: https://wiki.archlinux.org/title/Xterm.

## Debian

The CLI command for installing XTerm from a package by using [APT](https://packages.debian.org/sid/apt) on [Debian](https://www.debian.org/):

`sudo apt-get install xterm`

> For the XTerm package info, see [**Exact hits: Package xterm**](https://packages.debian.org/search?searchon=names&keywords=xterm) **>** your Debian version **>** see **Architecture** in the **Download xterm** table.

<!-- https://www.debian.org/releases/ -->

## Ubuntu

The CLI command for installing XTerm from a package on [Ubuntu](https://ubuntu.com/server/docs/package-management/):

`sudo apt install xterm`

> For the XTerm package info, go to your Ubuntu version at [packages.ubuntu.com](https://packages.ubuntu.com/) **>** **X Window System software** **>** **[Ctrl+F]** **>** enter `xterm` **>** see **Architecture** in the **Download xterm** table.

<!--
//https://packages.ubuntu.com/search?keywords=xterm
//https://packages.ubuntu.com/search?arch=i386&keywords=xterm

//* link:https://linuxmint.com/[Linux Mint]: ??? `sudo apt install xterm`
-->

## Fedora, Rocky Linux, CentOS Linux, CentOS Stream, RHEL

The CLI command for installing XTerm from a package by using [DNF](https://docs.fedoraproject.org/en-US/fedora/rawhide/system-administrators-guide/package-management/DNF/) on [Fedora](https://getfedora.org/), [Rocky Linux](https://rockylinux.org/), [CentOS Linux](https://www.centos.org/centos-linux/), [CentOS Stream](https://www.centos.org/centos-stream/), or [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux):

`sudo dnf install xterm.x86_64`

> For the XTerm package info, see Fedora Package Sources: https://src.fedoraproject.org/rpms/xterm.

## openSUSE/SUSE Linux Enterprise

The command for installing XTerm from a package by using [Zypper](https://doc.opensuse.org/documentation/leap/reference/html/book-reference/cha-sw-cl.html#sec-zypper) on a command line on [openSUSE](https://www.opensuse.org/) or [SUSE Linux Enterprise products](https://www.suse.com/products/):

`sudo zypper install xterm`

> For the XTerm package info, see https://software.opensuse.org/package/xterm.

<!--
// https://forums.opensuse.org/showthread.php/572947-Docs-related-request-about-installing-XTerm-on-openSUSE-and-SUSE-Linux-Enterprise?p=3144613#post3144613
// Another page on XTerm: https://en.opensuse.org/Xterm.
// https://en.opensuse.org/images/1/17/Zypper-cheat-sheet-1.pdf
// Note to Max re https://en.opensuse.org/Xterm: (invisible-island.net links are broken and man page is off another website) updated in 2015, it's a wiki, so Max can update when he finds time.
//FYI potential sources of confusion: https://packagehub.suse.com/search/?q=xterm
-->

# XTerm packages for other Linux distributions

In addition to the Linux distributions above, an XTerm package is available for a number of various other Linux distributions. Below are some of them.

[Adélie Linux](https://www.adelielinux.org/)
> For the XTerm package info, see https://pkg.adelielinux.org/current/xterm.

[AlmaLinux](https://almalinux.org/)

[Alpine Linux](https://www.alpinelinux.org/)
> For the XTerm package info, see https://pkgs.alpinelinux.org/packages?name=xterm&branch=edge.

[ALT Linux](https://en.altlinux.org/)
> For the XTerm package info, see https://packages.altlinux.org/en/sisyphus/srpms/xterm/.

[Amazon Linux 2](https://aws.amazon.com/amazon-linux-2/)

[Gentoo Linux](https://www.gentoo.org/)
> For the XTerm package info, see https://packages.gentoo.org/packages/x11-terms/xterm.

[KaOS](https://kaosx.us/)
> For the XTerm package info, see https://kaosx.us/packages/packages.php?sortby=&sortdir=&flagged=&page=&limit=&repo=&exact=&search=xterm.

[Mageia](https://www.mageia.org/en/)

[OpenMandriva](https://www.openmandriva.org/)

[PCLinuxOS](https://www.pclinuxos.com/)

[Sabayon Linux](https://www.sabayon.org/)/[Funtoo Linux](https://www.funtoo.org)

[Slackware Linux](http://www.slackware.com/)
> For the XTerm package info, go to http://www.slackware.com/releasenotes/packages14.2.php **>** **Ctrl+F** `PACKAGE NAME:  xterm`
 
[Void Linux](https://voidlinux.org/)
> For the XTerm package info, see https://github.com/void-linux/void-packages/tree/master/srcpkgs/xterm

# XTerm for UNIX

XTerm packages are available for several UNIX distributions.

[FreeBSD](https://www.freebsd.org/)

* [pkg](https://github.com/freebsd/pkg):
** [XTerm package details](https://cgit.freebsd.org/ports/tree/x11/xterm)
<!--
as of 20220114, the package name is `xterm-370` 'Terminal emulator for the X Window System'
[XTerm package description](https://cgit.freebsd.org/ports/plain/x11/xterm/pkg-descr?revision=HEAD)
Maintained by: ehaupt@FreeBSD.org
"Package names include the version number" source: https://docs.freebsd.org/en/books/handbook/ports/#ports-finding-applications
-->

[OpenBSD](https://www.openbsd.org/)
<!--
FAQ - Package Management https://www.openbsd.org/faq/faq15.html
the xterm package is there because its manpage is published https://man.openbsd.org/xterm
the footer of the manpage contains '2021-09-21  Patch #369'
didn't find an `xterm` package in https://cdn.openbsd.org/pub/OpenBSD/7.0/
neither in https://cdn.openbsd.org/pub/OpenBSD/7.0/packages-stable/
neigher in https://cdn.openbsd.org/pub/OpenBSD/7.0/packages/
-->

[NetBSD](https://netbsd.org/)

* [pkgsrc](http://www.pkgsrc.org/)

<!--
"WARNING: The website does not contain easily findable info about the xterm package, so I need to check it with them if they have an xterm package (maybe email them)!

pkgsrc is a framework for managing third-party software on UNIX-like systems, currently containing over 17,900 packages. It is the default package manager of NetBSD and SmartOS, and can be used to enable freely available software to be built easily on a large number of other UNIX-like platforms. The binary packages that are produced by pkgsrc can be used without having to compile anything from source. It can be easily used to complement the software on an existing system.
NetBSD already contains the necessary tools for using pkgsrc; on other platforms you need to bootstrap pkgsrc to get the package management tools installed."
-->

[Oracle Solaris](https://www.oracle.com/solaris/)

* [UnixPackages](https://unixpackages.com/):
** [package list](https://unixpackages.com/packages/package-list/) **>** [Ctrl+F] **>** `xterm-`

* [OpenCSW](https://www.opencsw.org/):
** [XTerm package details](https://www.opencsw.org/packages/CSWxterm/)

<!--
https://unixpackages.com/[UnixPackages]
UNIX packages
Open Source applications for Sun Solaris
Solaris applications & packages
Downloads for over 33,700 open source packages for Solaris 2.5 thru Solaris 11
-->

<!--
OpenCSW (pronounced open-cashew /ˈkæʃuː/) is an easy to use open source software distribution installable on top of Solaris and Solaris-based systems. OpenCSW is a community project dedicated to working closely with upstream projects to improve portability of open source software.
OpenCSW Solaris packages are provided in the OS-native SVR4 format.  We publish both binary packages and source package definitions, making it possible for others to build on top of OpenCSW’s work.
-->

# Not featured?

Does your system have an XTerm package available but not mentioned on this page? If so, please open an issue at [xterm-x11/docs](https://github.com/xterm-x11/docs/issues) and submit the instructions or a demo about how to install XTerm on your distribution!

# Sources

* https://pkgs.org/download/xterm
* https://web.archive.org/web/20141006204823/http://oswatershed.org/pkg/xterm

The above lists are likely to be incomplete.
