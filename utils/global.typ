#import "@preview/tablem:0.1.0": tablem
#import "@preview/tablex:0.0.6": tablex, hlinex

#let title = "SAil ARrrr"
#let subtitle = [Use of Augmented Reality for \  Visualizing Ambient Conditions while Sailing]
#let thesis = "Semester Thesis"
#let semester = "Fall 2023"
#let author = "Laurin Zubler"
#let advisor = "Prof. Dr. Frieder Loch"
#let institute = "IFS Institute for Software"
#let fieldOfStudy = "Software Engineering"

#let font = "Arial"

#let gap = 7pt
#let gapPage = 24.2pt
#let gapHeading1 = 7pt
#let gapHeading2 = 4.4pt
#let gapHeading3 = 4.4pt

#let textNormal = 11pt
#let textMarginale = 9pt
#let textHeading1 = 14pt
#let textHeading2 = 12pt
#let textHeading3 = 11pt
#let textHeaderFooter = 8pt
#let textFootnote = 7pt

#let lineHeading1 = 2.3pt
#let lineHeading2 = 1pt
#let lineHeading3 = 0.2pt
#let linePage = 0.6pt

#let paragraph(title, content) = {
  grid(
    columns: (1fr, 6fr),
    gutter: gap,
    text(textMarginale)[*#title*], 
    text(textNormal)[#content],
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

#let table = tablem.with(
  render: (columns: auto, align: center + horizon, ..args) => {
    tablex(
      columns: columns,
      auto-lines: false,
      align: align,
      hlinex(y: 0),
      hlinex(y: 1),
      ..args,
      hlinex(),
    )
  }
)
