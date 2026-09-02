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
- Founded in the fall of 2024
- \~140 members
- We cover all levels of linux (and even some unix/alternative OS)
- No matter your skill level, we have something you can learn here
- We meet fridays at 4PM in *Room Pending*

== What We have Done
- We have had many members make a bunch of projects using linux
- You can refer to our club github #link("https://github.com/Linux-Club-KSU/")[here]
- You can also talk to many members here about their projects as well (dont be afraid to ask!)
- We also send teams of members to local Hackathons/Game-Jams (all using linux and open-source tools of course)

== Why We Do It
- This club was formed because we wanted to build a linux community at KSU
- Many were fed up with Windows and the corperate "slop" forced in our operating systems
- Some wanted more freedom and control over their system
- Some wanted better performance and hardware support
- At its core, LCKSU wants to lower the barrier for learning and sharing linux and similar ideals

== Whats Special About These Slides
- This presentation, and future, are written using a FOSS language known as *typst*
- Similar to LaTeX, this language lets us build pdfs in a "raw" manner
- At any point in the semester, you can view (and even change) the very content of our presentations
- This way we can keep a consistent record, and improve these presentations as semesters go by
- Link: #link("https://github.com/Linux-Club-KSU/Presentations")[LCKSU/Presentations]

== Meet the Officer Team
To contact the team, please use ``` @sudo``` in the Discord
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
== Schedule
#table(
  // Header
  columns: (40%, 50%),
  stroke: none,
  align: horizon,
  
  table.header([*Date*], [*Topic*]),
  table.hline(),
  // Content
  [Sept. 4], [Welcome + Intro],
  [Sept. 11], [Guide to Distros],
  [Sept. 18], [Getting to a Desktop],
  [Sept. 25], [The Users Manual],
  [Oct. 2], [*REDACTED* Begin],
  [Oct. 9], [*REDACTED* End],
  [Oct. 16], [Pending],
  [Oct. 23], [Pending],
  [Oct. 30], [Pending],
  [Nov. 6], [Pending],
  [Nov. 13], [Pending],
  [Nov. 20], [Pending],
  [Dec. 4], [Pending],
  [Dec. 11], [End of Semester Party]
)

- This schedule is subject to change within reason
- Any changes will hopefully be made *2 weeks* in advance

== What We Plan To Do
// Add with other slide topics
We plan to talk about and work on some special topics:
- Software Support
- Security Practices
- Homelabs/Self-Hosing
- Gaming Compatability
- CAD and CNC
- Productivity Tools
- Linux Hardships
- *Local* AI
- Technical writing

With roughly 7 meetings open, we will have a poll (and be open to suggestions)
for what we should cover after mid-october


== Wait??? Redacted?
- In the past, we held *Installathons* to encourage participation and get people installing/using linux
- As time went on these "special events" became less special and more like normal meetings with a special label.
- This semester we want to do something _a bit different_

== Hackathon
#figure(image("assets/Hackathon_Poster.png"))

== Future Collaborations
We are currently working with professors at the college of computing and 
software engineeering (CCSE) to have a multi-stage bootcamp covering multiple 
levels of topics including:
- Installations (Distros & Daily Driving)
- Interfaces (GUI & TTY)
- Hardware functions & low-level operations

These will _hopefully_ be offered in addition to our regular semester program TBD

== Thank You
Its great to see you all, and we are excited to kick the semester off!

Any Questions?