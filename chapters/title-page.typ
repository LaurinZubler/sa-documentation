#import "@preview/chic-hdr:0.3.0": *
#import "/utils/global.typ" as global

#set page(
  margin: (left: 0.7cm, right: 0.7cm, top: 0.7cm, bottom: 0.7cm),
)

#show: chic.with(
  chic-footer(
    right-side: text(global.textFootnote)[Image source: https://devrant.com/rants/1175993/is-this-the-future-we-are-heading-to]  
  )
)

#include "/utils/build-datetime.typ"

#set align(center)
#v(1fr)

#text(48pt)[
  *#global.title*
]

#v(1fr)

#text(22pt)[
  #global.subtitle
]

#v(1fr)

#image("/images/vr_meme.jpg", width: 40%)

#v(1fr)

#text(18pt)[
  #global.thesis
]


#text(global.textNormal)[
  #grid(
    columns: (0.9fr, 1fr),
    row-gutter: 1em,
    column-gutter: 1em,
    align(right, "Author:"), align(left, global.author),
    align(right, "Advisor:"), align(left, global.advisor),
    align(right, "Institute:"), align(left, global.institute),
    align(right, "Field of Study:"), align(left, global.fieldOfStudy),
    align(right, "Semester:"), align(left, global.semester),
  )
]


#v(0.5fr)

#image("/images/ost_logo.svg", height: 3cm)

#v(0.5fr)
