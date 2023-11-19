#import "utils/global.typ" as global

// document metadata
#set document(
    title: global.title,
    author: global.author
)

// Text size and font 
#set text(
  11pt,
  font: "Arial",
)

// page numbering
#set page(numbering: "1 / 1")

// figure caption style
#show figure.caption: emph

// heading 1
#show heading.where(level: 1): it => block(width: 100%)[
  #set text(14pt)
  #it.body
  #line(stroke: 2pt, length: 100%)
]

// heading 2
#show heading.where(level: 2): it => block(width: 100%)[
  #set text(12pt)
  #counter(heading).display() #it.body
  #line(length: 100%)
]

#include "content/title-page.typ"

= Abstract
#include "content/abstract.typ"
#pagebreak()

#outline(
    title: "Table of Contents",
    depth: 3,
    indent: auto,
    fill: repeat[ . .],
)

#pagebreak()

// heading 1
#show heading.where(level: 1): it => block(width: 100%)[
  #set text(14pt)
  #counter(heading).display() #it.body
  #line(stroke: 2pt, length: 100%)
]

#set heading(numbering: "1.1")
#show bibliography: set heading(numbering: "1.1")


= Introduction

#pagebreak()

= Research
#include "content/research.typ"
#pagebreak()

// = Interviews
// #include "content/interviews.typ"
// #pagebreak()

= Personas
#include "content/personas.typ"

= Scenarios
#pagebreak()

= Project Management
#include "content/project-management.typ"

#bibliography("SAil_ARrrr.bib")
#pagebreak()

= Glossary

= List of Figures
#outline(
  title: none,
  target: figure.where(kind: image),
)

= List of Tables
#outline(
  title: none,
  target: figure.where(kind: table),
)

// == Formulas
#pagebreak()

= Appendix
#include "content/appendix.typ"