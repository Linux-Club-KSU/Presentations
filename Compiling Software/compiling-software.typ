/*
Compiling Software Slides for the LCKSU
*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// ── Palette (change `accent` to retheme the whole deck) ──
#let accent = rgb("#2a6f97")

// ── macOS Terminal settings ──
#let term-user = "camden"
#let term-host = "lcksu"
#let term-mono = ("SF Mono", "Menlo", "DejaVu Sans Mono")
#let term-ui   = ("SF Pro Text", "SF Pro", "Helvetica Neue", "Helvetica", "Arial")
#let term-fg   = rgb("#1f1f1f")
#let term-dim  = rgb("#8a8a8e")
#let title-fg  = rgb("#3d3d3d")

// Init + config title page
#show: slides.with(
  title: "Compiling Software",
  subtitle: "Friday, November 9th, 2026",
  date: none,
  authors: ("Linux Club at KSU (LCKSU)",),
  layout: "medium",
  ratio: 4/3,
  title-color: accent,
  subslide-numbering: none,
)

// Custom color rules
#show link: set text(fill: blue, style: "italic")
#show strong: set text(fill: accent)

// ── macOS Terminal window ──

// Traffic-light button
#let light(fill, edge) = circle(radius: 0.465em, fill: fill, stroke: 0.5pt + edge)

// Finder-style blue folder icon
#let folder-icon = box(width: 1.15em, height: 0.9em, {
  place(top + left, rect(
    width: 0.48em, height: 0.3em, radius: (top: 0.08em),
    fill: rgb("#4ba3ec"),
  ))
  place(top + left, dy: 0.12em, rect(
    width: 1.15em, height: 0.78em, radius: 0.1em,
    fill: gradient.linear(rgb("#8dd0fc"), rgb("#4fa8ef"), angle: 90deg),
  ))
})

// Soft window shadow (Typst has no blur, so this stacks faint rings)
#let soft-shadow(r, body) = {
  let out = body
  for i in range(1, 5) {
    out = block(
      radius: r + i * 1pt,
      inset: (x: 1pt, top: 0.5pt, bottom: 1.5pt),
      fill: rgb(0, 0, 0, 2.5%),
      out,
    )
  }
  out
}

// The window itself; sizes are in em so it scales with `size`
#let terminal(title: "~", cols: 80, rows: 24, size: 0.62em, body) = {
  set text(size: size)

  let titlebar = block(width: 100%, height: 2.2em, inset: (x: 0.68em),
    align(horizon, grid(
      columns: (auto, auto, auto, auto, 1fr),
      column-gutter: (0.7em, 0.7em, 1.05em, 0.4em),
      align: horizon,
      light(rgb("#ff5f57"), rgb("#e0443e")),
      light(rgb("#febc2e"), rgb("#dea123")),
      light(rgb("#28c840"), rgb("#1aab29")),
      folder-icon,
      text(font: term-ui, weight: "semibold", fill: title-fg,
        title + " — -zsh — " + str(cols) + "×" + str(rows)),
    )),
  )

  let content = block(width: 100%, inset: (x: 0.7em, top: 0.7em, bottom: 1.4em), {
    set text(font: term-mono, fill: term-fg, hyphenate: false, ligatures: false)
    set par(leading: 0.6em, justify: false)
    body
  })

  soft-shadow(0.85em, block(
    width: 100%, radius: 0.85em, clip: true, fill: white,
    stroke: 0.5pt + rgb(0, 0, 0, 22%),
    stack(
      titlebar,
      line(length: 100%, stroke: 0.5pt + rgb(0, 0, 0, 9%)),
      content,
    ),
  ))
}

// Terminal line helpers
#let term-cursor = box(width: 0.6em, height: 1.1em, baseline: 0.22em, fill: rgb("#8e8e93"))
#let term-lines(..lines) = stack(spacing: 0.6em, ..lines.pos())
#let comment(t) = text(fill: term-dim, "# " + t)
#let prompt(cmd, dir: "~", note: none, cursor: false) = {
  text(term-user + "@" + term-host + " " + dir + " % " + cmd)
  if note != none { text(fill: term-dim, " " + note) }
  if cursor { term-cursor }
}

// ── Other helpers ──

// Block quote with optional attribution
#let pullquote(body, by: none) = block(
  width: 100%, inset: (left: 14pt, right: 10pt, y: 8pt),
  fill: accent.lighten(92%), stroke: (left: 3pt + accent),
  {
    text(style: "italic", body)
    if by != none {
      v(4pt)
      align(right, text(0.9em, fill: accent)[— #by])
    }
  },
)

// Small rounded label
#let pill(body) = box(
  fill: accent.lighten(85%), inset: (x: 6pt, y: 3pt), radius: 8pt,
  text(0.85em, fill: accent.darken(20%), weight: "bold", body),
)

// Boxes and arrow for the pipeline diagram
#let node(body, filled: false) = box(
  inset: (x: 10pt, y: 8pt), radius: 6pt, stroke: 1.5pt + accent,
  fill: if filled { accent } else { white },
  text(fill: if filled { white } else { accent }, weight: "bold", body),
)
#let flow-arrow = text(1.4em, fill: accent)[→]

// ── Content ──

== What is compilation?
_The process of compilation_ is translating one grammar into another. A *compiler* is a state machine that can execute this process.

#v(1.5em)
#align(center, grid(
  columns: 5, column-gutter: 8pt, align: horizon,
  node[Grammar A], flow-arrow, node(filled: true)[Compiler], flow-arrow, node[Grammar B],
))

== What does compilation look like?
#let p = prompt.with(dir: "~")
#terminal(title: "camden", cols: 115, rows: 36)[
  #term-lines(
    comment("C source -> native binary"),
    p("clang -o hello_world hello_world.c"),
    0.4em,
    comment("Go source -> native binary"),
    p("go build -o hello_world ./hello_world.go"),
    0.4em,
    comment("Wasm binary -> text format"),
    p("wasm-tools print foo.wasm -o foo.wat"),
    0.4em,
    comment("PNG frames -> video"),
    p("ffmpeg -i img_%04d.png -pix_fmt yuv420p out.mp4"),
    0.4em,
    p("", cursor: true),
  )
]

== "Building from Source"
#terminal(title: "godot", cols: 115, rows: 36)[
  #term-lines(
    comment("To compile Godot:"),
    prompt("apt install build-essential scons pkg-config", dir: "Downloads", note: "# ..."),
    prompt("git clone https://github.com/godotengine/godot -b 4.7.2-stable", dir: "Downloads"),
    prompt("cd godot", dir: "Downloads"),
    prompt("scons platform=linuxbsd target=editor arch=arm64", dir: "godot", cursor: true),
  )
]

= Trusting Trust \ #text(0.6em, style: "italic")[How can you be sure your software is safe?]

== Reflections on Trusting Trust
#grid(
  columns: (1fr, 32%), column-gutter: 14pt, align: top,
  {
    set text(0.72em)
    pullquote[
      You can't trust code that you did not totally create yourself. No amount of source-level verification or scrutiny will protect you from using untrusted code...
    ]
    v(6pt)
    pullquote(by: [Ken Thompson, _Communications of the ACM_, 1984])[
      ...I could have picked on any program-handling program such as an assembler, a loader, or even hardware microcode. As the level of program gets lower, these bugs will be harder and harder to detect. A well-installed microcode bug will be almost impossible to detect.
    ]
  },
  {
    // Photo slot: replace this rect with your own image, e.g.
    image("assets/thompson.jpg", width: 100%)
    // rect(
    //   width: 100%, height: 4.5cm, radius: 6pt,
    //   stroke: (paint: luma(170), dash: "dashed"),
    //   align(center + horizon, text(0.6em, fill: luma(130))[photo]),
    // )
    align(center, text(0.6em)[*Ken Thompson*])
  },
)

== Trusting-Trust Attack Against NixOS
#text(0.75em)[
  #pill[Paper] #h(4pt) _Julien Malka, et al._ · #link("https://arxiv.org/abs/2607.24888")[arXiv:2607.24888]
]
#v(4pt)

#text(0.8em)[#pullquote[
  We construct a complete trusting-trust attack around GNU strip, an ordinary build utility that neither inspects nor generates source code, using only manipulations of finished ELF files. In one bootstrap execution of the NixOS Linux distribution, #highlight(fill: accent.lighten(75%))[a single tampered strip in the binary seed] implants its payload into each later strip rebuilt from unmodified source.

  The infected strip in the final standard environment can then implant the payload into binaries of downstream packages, even though that environment has no runtime reference to the bootstrap seed. On a real nixpkgs revision, the attack builds a complete graphical installer without failures and #highlight(fill: accent.lighten(75%))[backdoors almost every one of its binaries], enabling arbitrary malicious behavior of the subverted packages.
]]

= Questions

= Announcements