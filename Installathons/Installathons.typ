/*
Installathon Slides for the LCKSU
- Initial Draft by JEvan234,
- Open to suggestions/pull requests by LCKSU members

*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// Init + config title page
#show: slides.with(
  title: "Installathon",
  subtitle: "LCKSU's guide to installing linux",
  date: none,
  authors: ("Linux Club at KSU (LCKSU)",),
  layout: "medium",
  ratio: 4/3,
  title-color: none,
  subslide-numbering: none,
)

// Custom color rules
#show link: set text(fill: blue, style: "italic")

// Content
== Why Are You Switching?
Consider what you want different:
- Better support for old hardware
- More freedom/custamizability
- Something else?

== What Hardware Do You Have?
- GPU: AMD/Nvidia/Intel
- CPU: AMD/Intel
- What RGB ecosystem

Generally speaking, AMD provides the best linux support, and Nvidia GPUs require extra drivers to game.
Most RGB ecosystems can be used using #link("https://openrgb.org/")[OpenRGB]. Always be sure to look up linux compatability for your system or components.

== Dual Booting vs. Full Swap
Do you still want to use windows? There might be a few reasons why:
- Anti-cheat support is better on windows
- Some games require Windows secureboot and TPM to play
- Software support (Adobe, Solidworks, etc.)
- Driver support (for cutting edge hardware)

If you still need windows, you can use windows and linux at the same time, and reboot to swap between them. If you want a more focused or dedicated linux experience, maybe a clean install is for you.

== Which Distro (Version) Should You Pick?
LCKSU Recommends a few starter distros:
- ZorinOS (#link("https://zorin.com/os/")[zorin.com/os])
- Linux Mint (#link("https://linuxmint.com/")[linuxmint.com])
- Bazzite (#link("https://bazzite.gg/")[bazzite.gg])
Be sure to check out their websites to find which is best for you.

== The Boot USB
Once you download the linux ISO, you need to put it on an USB drive (> 8Gb). There are a few ways to do this, but for beginners we recommend #link("https://etcher.balena.io/")[balenaEtcher] for a simple, 3-click process.

#image("assets/BalenaEtcher.png",
  width: 70%
)

== Completing the Switching

== Learning Linux (What Makes It Different)

== Thank You!
Thank you for using this resource, for questions/concerns, reach out to the LCKSU officer team on our discord.