// #let title = "Use of augmented reality for visualizing ambient conditions while sailing"
#let title = "Use of Augmented Reality for Visualizing Ambient Conditions while Sailing"
#let subtitle = "Semester Thesis"
#let semester = "Fall 2023"
#let author = "Laurin Zubler"
#let advisor = "Frieder Loch"

#let gap = 0.65em

#let paragraph(title, content) = {
  grid(
    columns: (1fr, 6fr),
    gutter: gap,
    text(9pt)[*#title*], content,
  )
  v(0.5em)
}

#let row(title, content) = {
  grid(
    columns: (1fr, 6fr),
    [#title:], content,
  )
}

#let todo(text) = {
  block(
    fill: rgb("#ffdc00"),
    inset: gap,
    radius: 4pt,
    [*Todo:* #text],
  )
}
