<!-- 
// top menu
// 'Install'
// _'Package' = this page
// _'xterm.tar.gz'
-->

# Quick install on Linux

You can easily and quickly install XTerm on a command line on most GNU/Linux distributions by using a package manager.

Here are the command line interface (CLI) commands for installing XTerm from a package on some distributions:

Arch Linux: `pacman -Syu xterm`
<!-- source: https://bbs.archlinux.org/viewtopic.php?id=242823 -->

Debian: `sudo apt-get install xterm`
<!-- https://www.debian.org/releases/ and [APT](https://packages.debian.org/sid/apt) -->

Ubuntu: `sudo apt install xterm`

Fedora, Rocky Linux, CentOS Linux, CentOS Stream, RHEL: `sudo dnf install xterm.x86_64`

openSUSE, SUSE Linux Enterprise: `sudo zypper install xterm`

# Packages for Linux and UNIX systems

XTerm packages are available for various Linux distributions, including:

[Adélie Linux](https://www.adelielinux.org/), [AlmaLinux](https://almalinux.org/), [Alpine Linux](https://www.alpinelinux.org/), [ALT Linux](https://en.altlinux.org/), [Amazon Linux 2](https://aws.amazon.com/amazon-linux-2/), [Arch Linux](https://archlinux.org/), [CentOS Linux](https://www.centos.org/centos-linux/), [CentOS Stream](https://www.centos.org/centos-stream/), [Debian](https://www.debian.org/), [Fedora](https://getfedora.org/), [Funtoo Linux](https://www.funtoo.org), [Gentoo Linux](https://www.gentoo.org/), [KaOS](https://kaosx.us/), [Linux Mint](https://www.linuxmint.com/), [Mageia](https://www.mageia.org/en/), [OpenMandriva](https://www.openmandriva.org/), [openSUSE](https://www.opensuse.org/), [PCLinuxOS](https://www.pclinuxos.com/), [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux), [Rocky Linux](https://rockylinux.org/), [Sabayon Linux](https://www.sabayon.org/), [Slackware Linux](http://www.slackware.com/),[SUSE Linux Enterprise products](https://www.suse.com/products/), [Ubuntu](https://ubuntu.com/server/docs/package-management/), [Void Linux](https://voidlinux.org/),

If your system has an XTerm package available but not mentioned on this page, open an issue at [xterm-x11/docs](https://github.com/xterm-x11/docs/issues) to let us know.

# XTerm package details

In addition to the package search and details from your package-managing tool that you can view on a command line, pkgs.org provides a dedicated page for each XTerm package with extensive details. See https://pkgs.org/download/xterm for more information.

Email them to include the identified missing Linux distros:
https://pkgs.org/download/xterm


# XTerm for UNIX

Review system names and package details and merge this into the Linux distro list:

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

and submit the instructions or a demo about how to install XTerm on your distribution!
