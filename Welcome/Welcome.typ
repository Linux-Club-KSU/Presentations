/*
Welcome Slides for the LCKSU
- Initial Draft by JEvan234,
- Open to suggestions/pull requests by LCKSU members

*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// Init + config title page
#show: slides.with(
  title: "Welcome to the ",
  subtitle: none,
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
== Who We Are
- We are the Linux Club at Kennesaw State University
- Referred to as LCKSU
- We cover all levels of linux (and even some unix/alternative OS)
- No matter your skill level, we have something you can learn here
- We meet fridays at 4PM in *J2112* (across from the python tutoring in the _Atrium_)

== What We have Done
- We have had many members make a bunch of projects using linux
- You can refer to our club github #link("https://github.com/Linux-Club-KSU/")[here]
- You can also talk to many members here about their projects as well (dont be afraid to ask!)
- We also send teams of members to local Hackathons/Game-Jams (all using linux of course)

== Why We Do It
- This club was formed because we wanted to build a linux community at KSU
- Many were fed up with Windows and the corperate "slop" forced in our operating system
- Some wanted more freedom and control over their system
- Some wanted better performance and hardware support
- At its core, LCKSU wants to lower the barrier for learning and sharing linux

== What We Plan To Do
// Add with other slide topics
We plan to talk about and work on some special topics:
- 3D printing
- Homelabs
- Gaming
- Parallel Computation
- Security
- and many more!

== Whats Special About These Slides
- This presentation, and future, are written using a FOSS language known as typst
- Similar to LaTeX, this language lets us build pdfs in a "raw" manner
- At any point in the semester, you can view (and even change) the very content of our presentations
- This way we can keep a consistent record, and improve these presentations as semesters go by
- Link: #link("https://github.com/Linux-Club-KSU/Presentations")[LCKSU/Presentations]

== Meet the Officer Team
To contact the team, please use ```@sudo``` in the Discord
#table(
  // Header
  columns: (40%, 50%),
  stroke: none,
  align: center + horizon,
  
  table.header([*Role*], [*Discord Name*]),
  table.hline(),
  // Content
  [President], [Jacob],
  // Other officers please put your preferred name in!
  [Vice-President], [CliffR.],
  [Tresurer], [Greg],
  [Marketing Officer], [rhomennoodlez],
  [Secretary], [bluebnnt]
)

== Any Questions?

== Thank You
Its great to see you all, and we are excited to kick the semester off!