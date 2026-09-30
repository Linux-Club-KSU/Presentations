/*
Template on Linux Slides for the LCKSU
- Initial Draft by JEvan234,
- Open to suggestions/pull requests by LCKSU members

*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// Init + config title page
#show: slides.with(
  title: "Guide to Using Linux",
  subtitle: "Guide for Daily KDE driving linux",
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
= KDE Plasma \ #text(0.6em, style: "italic")["Windows like linux desktop"]

== Getting Around KDE
- KDE Plasma should feel pretty familiar if you are coming from Windows
- The KDE taskbar works similarly to the Windows taskbar
- The Application Launcher is KDE's equivalent to the Start Menu
- The System Tray contains networking, audio, Bluetooth, notifications, etc.

#align(center)[#image("assets/kde-desktop-labled.png", width: 250pt)]

== Managing Files
- Documents, Downloads, Pictures, and Videos work the same way
- External drives appear in the sidebar
- Tabs and split-view make working with multiple folders easier
- Press `Ctrl + H` to show hidden files

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,

  align(center)[*Windows:* File Explorer],
  align(center)[*KDE:* Dolphin],

  image("assets/windows-file-explorer.png", width: 100%),
  image("assets/dolphin.png", width: 100%),
)

== Installing & Updating Apps

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,

  [*Windows:* Microsoft Store / Internet],
  [*KDE:* Discover],

)
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,

  [
    - Search for applications and install them through Discover
    - Discover can update both applications and system software
    - Most applications do not need their own separate updater
    - You usually do not need to download installers from random websites
  ],

  [#image("assets/discover.png", width: 100%)]
)

#block(
  fill: luma(240),
  inset: 8pt,
  radius: 4pt,
)[
  *Archlinux:* Discover does not work well and does not come with the ability to install system packages.
]

== System Settings
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,

  [*Windows:* Settings / Control Panel],
  [*KDE:* System Settings],
)
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,

  [
    - Displays and monitor arrangement
    - Audio
    - Networking and Bluetooth
  ],
  [
    - Keyboard and mouse
    - Power management
    - Appearance
  ],
)
#align(center)[#image("assets/settings.png", width: 250pt)]

= Customizing KDE Plasma \ #text(0.6em, style: "italic")["Change almost everything"]

== Appearance
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    - Wallpapers
    - Global themes
    - Colors
  ],
  [
    - Icons
    - Window decorations
    - Fonts
  ]
)
#align(center)[#image("assets/theming.png", width: 250pt)]

== Panels
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    - Move the panel to any edge
    - Change its size
    - Add or remove items
  ],
  [
    - Create multiple panels
    - Change alignment and spacing
    - Floating
  ]
)
#align(center)[#image("assets/panel-editor.png", width: 250pt)]

== Widgets
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    - Add widgets to the desktop or panel
    - Clock
  ],
  [
    - System Monitor
    - Application Launcher
    - Many more can be downloaded
  ]
)
#align(center)[#image("assets/widget-edit-mode.png", width: 250pt)]

== System Tools
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,

  [*Windows:* Task Manager],
  [*KDE:* System Monitor],
)
- System Monitor can show running applications and processes and resource usage
- Frozen applications can be killed from System Monitor or by spamming alt-f4
#align(center)[#image("assets/system-monitor.png", width: 200pt)]

== Useful KDE Tricks
- Pressing `meta + left click` allows you to move a window around
- Pressing `meta + right click` allows you to resize window without having to use the edge
- KDE has a clipboard history you can access it from the bottom right where the clipboard icon is

= Questions?
== Announcements