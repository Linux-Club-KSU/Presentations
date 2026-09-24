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

== Creating a Bootable Instance
// balena etcher
- Install #link("https://etcher.balena.io/")[Balena Etcher]
- Follow along with the instructions (3 easy clicks)
- Be sure to select your install drive!

// rpi imager for rpi
#v(60%)
- For Raspberry Pi installs, use the Rpi imager for all installs

== Ventoys (Advanced)
- If you want to create a bootable enviroment, create a #link("https://www.ventoy.net/en/index.html")[Ventoy]
- This lets you install multiple linux ISO's and pick which one to boot into on the fly
- Useful to keep some recovery utilities:
  - I recommend #link("https://gparted.org/livecd.php")[GpartedLive] for storage formatting
  - Any others?

== Getting to Boot Options

== First Boot
// selecting install vs just try out

== Common choices

== Opting in to data collection

= Questions

= Join us next week for configuration!

== Announcements