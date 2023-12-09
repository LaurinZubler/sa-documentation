#import "/utils/global.typ" as global
#include "/utils/build-datetime.typ"

#v(4fr)

#set align(center)
#text(2em)[
    *#global.subtitle*
]

#v(1fr)

#text(1.5em)[
    #global.thesis
]

#v(2fr)


#text(1.5em)[
    #grid(
        columns: (1fr, 1fr),
        row-gutter: 1em,
        column-gutter: 1.5em,
        align(right, "Semester:"), align(left, global.semester),
        align(right, "Author:"), align(left, global.author),
        align(right, "Advisor:"), align(left, global.advisor),
    )
]

#v(2fr)

#image("/images/vr_meme.jpg", width: 40%)

#v(2fr)

#image("/images/ost_logo.svg", height: 3cm)
