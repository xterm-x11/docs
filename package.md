<!-- 
// top menu
// 'Install'
// _'Package' = this page
// _'xterm.tar.gz'
-->

# Quick install on Linux

You can easily and quickly install XTerm on a command line on most GNU/Linux distributions by using a package manager.

Before installing XTerm, verify that your system is using X11 (rather than Wayland).
There is a number of commands you can choose from to check this:

`$ echo $XDG_SESSION_TYPE`

`$ printf 'Session is: %s\n' "${DISPLAY:+X11}${WAYLAND_DISPLAY:+WAYLAND}"`

`$ loginctl show-session $(awk '/tty/ {print $1}' <(loginctl)) -p Type | awk -F= '{print $2}'`

`$ loginctl show-session $(loginctl | grep $(whoami) | awk '{print $1}') -p Type`

`$ loginctl show-session $(loginctl show-user $(whoami) -p Display --value) -p Type --value`

`$ loginctl show-session "$XDG_SESSION_ID" -p Type`

<!--
Also $ echo $WAYLAND_DISPLAY (prints nothing if Wayland is not used)
Source for thee above commands:
https://unix.stackexchange.com/questions/202891/how-to-know-whether-wayland-or-x11-is-being-used/371164#371164
-->

Here are the commands for installing XTerm from a package on some distributions:

Arch Linux: `pacman -Syu xterm`
<!-- source: https://bbs.archlinux.org/viewtopic.php?id=242823 -->

Debian, Linux Mint: `sudo apt-get install xterm`
<!-- https://www.debian.org/releases/ and [APT](https://packages.debian.org/sid/apt) -->

Ubuntu: `sudo apt install xterm`

Fedora, Rocky Linux, CentOS Linux, CentOS Stream, RHEL: `sudo dnf install xterm.x86_64`

openSUSE, SUSE Linux Enterprise: `sudo zypper install xterm`

# Packages for Linux and UNIX systems

XTerm packages are available for the following systems:

[Adélie Linux](https://www.adelielinux.org/), [AlmaLinux](https://almalinux.org/), [Alpine Linux](https://www.alpinelinux.org/), [ALT Linux](https://en.altlinux.org/), [Amazon Linux 2](https://aws.amazon.com/amazon-linux-2/), [Arch Linux](https://archlinux.org/), [CentOS Linux](https://www.centos.org/centos-linux/), [CentOS Stream](https://www.centos.org/centos-stream/), [Debian](https://www.debian.org/), [Fedora](https://getfedora.org/), [FreeBSD](https://www.freebsd.org/), [Funtoo Linux](https://www.funtoo.org), [Gentoo Linux](https://www.gentoo.org/), [KaOS](https://kaosx.us/), [Linux Mint](https://www.linuxmint.com/), [Mageia](https://www.mageia.org/en/), [NetBSD](https://netbsd.org/), [OpenBSD](https://www.openbsd.org/), [OpenMandriva](https://www.openmandriva.org/), [openSUSE](https://www.opensuse.org/), [Oracle Solaris](https://www.oracle.com/solaris/), [PCLinuxOS](https://www.pclinuxos.com/), [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux), [Rocky Linux](https://rockylinux.org/), [Sabayon Linux](https://www.sabayon.org/), [Slackware Linux](http://www.slackware.com/), [SUSE Linux Enterprise products](https://www.suse.com/products/), [Ubuntu](https://ubuntu.com/server/docs/package-management/), [Void Linux](https://voidlinux.org/).

If your system has an XTerm package available but is not listed, please open an issue at [xterm-x11/docs](https://github.com/xterm-x11/docs/issues) to let us know.

# XTerm package info

In addition to the package search and package information that you can view on a command line from your package manager tool, two following website provide information on almost all XTerm packages:

* https://pkgs.org/download/xterm. Find your system there on the list and click the package name to go to the package information page on https://pkgs.org/, where extensive information is available about the package, including the link to the package homepage.

* https://repology.org/project/xterm/versions. Find the package for your system and click the package name to be redirected to the package homepage.
