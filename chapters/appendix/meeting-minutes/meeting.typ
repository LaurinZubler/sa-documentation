
#let paragraph(title, content) = {
  grid(
    columns: (1fr, 6fr),
    gutter: 7pt,
    text(9pt)[*#title*], 
    text(11pt)[#content],
  )
  v(7pt)
}

#let meeting(title, date, doc) = [
  === Week #title

  #paragraph(
    "Date", date
  )
  #paragraph(
    "Notes", doc
  )
      
]
