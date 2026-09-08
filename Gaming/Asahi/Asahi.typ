/*
Mac+Linux Slides for the LCKSU
- Initial Draft by JEvan234,
- Open to suggestions/pull requests by LCKSU members

*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// Init + config title page
#show: slides.with(
  title: "Running Linux on Modern Mac",
  subtitle: "A Quick History + Discussion",
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
== Linux On Mac Pre-2020
- With _intel-based_ mac, installing linux is almost like any old windows machine
- Minus some slight bios differences, just download the amd64 or x86 installer and have fun!
- With the introduction of the M-Series chips (November 2020) there was no way to get linux running on the closed-source architecture

== But there was HOPE!
- The #link("https://asahilinux.org/")[Asahi Linux Project] introduced linux support through _reverse engineering_