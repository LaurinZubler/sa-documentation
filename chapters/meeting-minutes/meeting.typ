#let meeting(title, date, doc) = {
  show heading: it => block(width: 100%)[
  #set text(14pt)
  #it.body
]

// heading 2
show heading.where(level: 2): it => block(width: 100%)[
  #set text(12pt)
  #it.body
]
  [
    = Week #title
    Date: #date \
        #doc
  ]
}