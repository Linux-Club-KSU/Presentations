/*
Guide to Distros slides for the LCKSU
- Initial Draft by Camden Johnson,
- Open to suggestions/pull requests by LCKSU members

*/

#import "@preview/slydst:0.1.5": *

#show: slides.with(
  title: "Guide to Distros",
  subtitle: none,
  date: none,
  authors: ("Linux Club at KSU (LCKSU)",),
  layout: "medium",
  ratio: 4/3,
  title-color: none,
  subslide-numbering: none,
)

#show link: set text(fill: blue, style: "italic")


== What is a Linux Distribution?
- All Linux distributions share the _Linux kernel_.
- A distribution is simply a type of _userspace_ that (typically) provides an *init system*, a *package manager*, and a *default configuration*.
- Every distribution is built around a guiding philosophy.
- Today will cover: the top six common Linux distributions, and three related "UNIX" systems.


= Linux Distributions \ #text(0.6em, style: "italic")["Freedom, for the user (of the system)."]


== Debian
*Derivatives:* Ubuntu, Linux Mint, Raspberry Pi OS \
*Philosophy:* _"Universal, community-governed, FOSS-first."_

#v(0.5em)
#align(center)[_*"Slow and stable."*_]
#v(0.5em)

- Non-free firmware split from main repository.
- Policy Manual governs all packages.
- Decisions settled by General Resolution.


== Arch
*Derivatives:* SteamOS, Omarchy, Manjaro \
*Philosophy:* _"No unnecessary abstraction."_

#v(0.5em)
#align(center)[_*"Move fast and break things."*_]
#v(0.5em)

- Nothing is hidden or abstracted from the user.
- Packages (PKGBUILDs) stay as close to upstream as possible.
- Never leave the user with a question they can't answer (Arch Wiki).


== Fedora
*Derivatives:* Bazzite, Nobara, Qubes OS \
*Philosophy:* _"FOSS, and First."_

#v(0.5em)
#align(center)[_*"Move fast, but don't break everything."*_]
#v(0.5em)

- Has corporate backing (Red Hat); Security-Enhanced Linux enforced out-of-the-box.
- No proprietary codecs or drivers included by default.
- First to ship systemd, Wayland-by-default, and PipeWire.


== OpenSUSE
*Derivatives:* N/A \
*Philosophy:* _"Enterprise reliability, strong tooling."_

#v(0.5em)
#align(center)[_*"We have Datacenter™ at home."*_]
#v(0.5em)

- YaST provides centralized configuration (kind of) rather than a sparse `/etc` directory.
- All packages must pass rigorous testing.
- Btrfs w/ Snapper allows system rollbacks for failed or bad updates.


== Gentoo
*Derivatives:* ChromeOS \
*Philosophy:* _"Leave it up to the user; don't impose defaults."_

#v(0.5em)
#align(center)[_*"If you want something done right, you have to do it yourself."*_]
#v(0.5em)

- "Source-based distribution": all packages are compiled by the user on their machine.
- USE flags control every package's feature set at compile-time.
- No fixed init system or libc.


== NixOS
*Derivatives:* N/A \
*Philosophy:* _"Hermetic, reproducible packaging/configuration."_

#v(0.5em)
#align(center)[_*"Who needs a linker, anyway?"*_]
#v(0.5em)

- All packages are managed declaratively; a single configuration file manages the system.
- Provides a "well-defined state" for the system; little left to chance (no "it works on my machine").
- Allows users to enforce consistency across many different machines/environments.


= Related Systems: BSDs \ #text(0.6em, style: "italic")["Freedom, for the user (of the sources)."]

== FreeBSD
*Derivatives:* GhostBSD, NomadBSD, pfSense \
*Philosophy:* _"Cohesion over control; pragmatic, permissive licensing."_

#v(0.5em)
#align(center)[_*"BSD is dying."*_]
#v(0.5em)

- Base system (kernel and userspace) developed and released by one team, with one philosophy, and versioned together.
- BSD-licensed (permits proprietary, closed-source derivatives: PlayStation OS, Netflix, etc.).
- ZFS and jails are "first-class"; ZFS handles data integrity, jails handle containerization/isolation. Good for server environments.


== OpenBSD
*Derivatives:* N/A \
*Philosophy:* _"Security and correctness above all — even at the user's expense."_

#v(0.5em)
#align(center)[_*"Drivers not included."*_]
#v(0.5em)

- Base system (kernel and userspace) developed and released by one team, with one philosophy, and versioned together.
- All programs written to use as few permissions as possible, authored against the OpenBSD software guidelines.
- Sources are continuously audited across the entire system as standard routine practice, not periodically.


== macOS
*Derivatives:* N/A \
*Philosophy:* _"One system, one design, one experience; 'the user shouldn't need to know any of this exists.'"_

#v(0.5em)
#align(center)[_*"You're holding it wrong."*_]
#v(0.5em)

- Base system (kernel and userspace) developed and released by one team, with one philosophy, and versioned together.
- Integrates deeply with Apple ecosystem: AirDrop, AirPlay, Handoff, iCloud Keychain (WiFi passwords, passkeys, 2FA, etc.), iPhone Mirroring, satellite communication, Find My network, etc.
- System Integrity Protection and copious cryptographic signing makes any low-level modification (malicious or benign) incredibly tedious or outright infeasible; trades UNIX-style "root is all-powerful" for unmatched security posture.


= Questions?

== Announcements
- October 9th Meeting: Self-Hosting
- "Linux Hardships" is also a *Guaranteed Topic* (most likely week after)
- Other topics are tied, stay tuned for a run-off poll either tonight or tomorrow
- We need _your help_: we need _emails_
