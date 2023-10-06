#import "utils/global.typ" as global

// document metadata
#set document(
    title: global.title,
    author: global.author
)

#include "content/title-page.typ"

#set heading(numbering: "1.1")
#set page(numbering: "1 / 1")

#outline(
    title: "Table of Contents",
    depth: 3,
    indent: auto,
    fill: repeat[ . .],
)

#pagebreak()
#include "content/project-management.typ"

#pagebreak()
#include "content/appendix.typ"