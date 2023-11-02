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
#include "content/abstract.typ"
#pagebreak()

#outline(
    title: "Table of Contents",
    depth: 3,
    indent: auto,
    fill: repeat[ . .],
)

#pagebreak()

= Introduction

#pagebreak()

= Research
#include "content/research.typ"
#pagebreak()

= Interviews
#include "content/interviews.typ"
#pagebreak()

= Personas

= Scenarios

= Project Management
#include "content/project-management.typ"
#pagebreak()

= Appendix
#include "content/appendix.typ"