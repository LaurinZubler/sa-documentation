#let title = "SAil ARrrr"
#let subtitle = [Use of Augmented Reality for \  Visualizing Ambient Conditions while Sailing]
#let thesis = "Semester Thesis"
#let semester = "Fall 2023"
#let author = "Laurin Zubler"
#let advisor = "Prof. Dr. Frieder Loch"
#let institute = "IFS Institute for Software"
#let fieldOfStudy = "Software Engineering"

#let font = "Arial"

#let gap = 0.65em
#let gapPage = 2.2em
#let gapHeading1 = 0.65em
#let gapHeading2 = 0.4em
#let gapHeading3 = 0.4em

#let textNormal = 11pt
#let textMarginale = 9pt
#let textHeading1 = 14pt
#let textHeading2 = 12pt
#let textHeading3 = 11pt
#let textHeaderFooter = 8pt

#let lineHeading1 = 2.3pt
#let lineHeading2 = 1pt
#let lineHeading3 = 0.2pt
#let linePage = 0.6pt

#let paragraph(title, content) = {
  grid(
    columns: (1fr, 6fr),
    gutter: gap,
    text(textMarginale)[*#title*], content,
  )
  v(gap)
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


#let fullWithLine(thickness: 1pt) = {
  set text(0.6em)
  line(stroke: thickness, length: 100%)
}
