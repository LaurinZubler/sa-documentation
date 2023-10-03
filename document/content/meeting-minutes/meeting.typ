#let meeting(title, date, doc) = {
    text()[
        = Week #title
        Date: #date \
         #doc
         #pagebreak()
    ]
}