/*
Installing Linux Slides for the LCKSU
- Initial Draft by JEvan234,
- Open to suggestions/pull requests by LCKSU members

*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// Init + config title page
#show: slides.with(
  title: "Installing Linux",
  subtitle: "The General Process",
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
== Picking a Distro
//refer to previous slides
- Refer to the last presentation for more info
- Safe options include Linux Mint, Ubuntu, and bazzite
- Any is fine, but some are _more_ friendly than others

== Getting a USB Drive
- Any drive will work, *but it will be wiped*
- Ideally you want over 8gb to account for larger installers

#align(center)[#image("assets/IMG_3619.png", height: 80%)]

== Creating a Bootable Instance
// balena etcher
- We recommend Installing #link("https://etcher.balena.io/")[Balena Etcher]
- Follow along with the instructions (3 easy clicks)
- Be sure to select your install drive!

#image("assets/BalenaScreenshot.png", width: 70%)

// rpi imager for rpi
- For Raspberry Pi installs, use the Rpi imager for all installs

== Ventoys (Advanced)
- If you want to create a bootable enviroment, create a #link("https://www.ventoy.net/en/index.html")[Ventoy]
- This lets you install multiple linux ISO's and pick which one to boot into on the fly
- Useful to keep some recovery utilities:
  - I recommend #link("https://gparted.org/livecd.php")[GpartedLive] for storage formatting
  - Any others?

#align(center)[#image("assets/VentoyMenu.png", width: 60%)]


== Getting through Boot Options
- On a boot, spam the bios options key (commonly F12, but manufacuturer specific)
- Select the USB drive as the boot option
- Select the Install option from the grub menu
- Follow the distros install guide/wizard

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  align: center,

  [
    #figure(
      image("assets/GrubMenu.png", width: 100%),
      caption: [Grub Menu],
    )
  ],

  [
    #figure(
      image("assets/DebianInstaller.png", width: 100%),
      caption: [Installer Menu],
    )
  ],
)

= You have now booted Linux! \ Any Questions?

= Join us next week for configuration!

== Announcements
- Next week wraps up the series
- We are fighting hard to regularly meet in J2112
- Keep answering the Polls!