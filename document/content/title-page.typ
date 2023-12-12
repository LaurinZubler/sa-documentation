#import "/utils/global.typ" as global
#include "/utils/build-datetime.typ"

#v(3fr)

#set align(center)

#text(48pt)[
    *#global.title*
]

#v(2fr)

#text(22pt)[
    #global.subtitle
]

#v(2fr)

#image("/images/vr_meme.jpg", width: 40%)

#v(2fr)

#text(18pt)[
    #global.thesis #global.semester
]

#v(2fr)


#text(global.textNormal)[
    #grid(
        columns: (1fr, 1fr),
        row-gutter: 1em,
        column-gutter: global.gap,
        align(right, "Author:"), align(left, global.author),
        align(right, "Advisor:"), align(left, global.advisor),
    )
]


#v(2fr)

#image("/images/ost_logo.svg", height: 3cm)
