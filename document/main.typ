#import "utils/global.typ" as global

// document metadata
#set document(
    title: global.title,
    author: global.author
)

#include "content/title-page.typ"

#set heading(numbering: "1.1")
#set page(numbering: "1 / 1")

= Abstract

= Management Summary
#pagebreak()

#outline(
    title: "Table of Contents",
    depth: 3,
    indent: auto,
    fill: repeat[ . .],
)

#pagebreak()

= Glossary and list of abbreviations

= Initual Situation

= Task Definition

= General Conditions

#pagebreak()

= Analysis
#include "content/analysis.typ"
#pagebreak()

= Project Management
#include "content/project-management.typ"
#pagebreak()

= Appendix
#include "content/appendix.typ"