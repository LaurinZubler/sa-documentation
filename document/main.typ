#import "@preview/chic-hdr:0.3.0": *
#import "@preview/hydra:0.2.0": hydra

#import "/utils/global.typ" as global

// document metadata
#set document(
    title: global.subtitle,
    author: global.author
)

// page layout
#set page(
  margin: (left: 1.8cm, right: 1cm),
)

// Text size and font 
#set text(
  global.textNormal,
  font: global.font,
)

// page numbering
#set page(numbering: "1 / 1")

// figure caption style
#show figure.caption: emph

// heading 1
#show heading.where(level: 1): it => {
  pagebreak()
  set text(global.textHeading1)
  if it.body == "Abstract" or it.body == "Table of Contents" {
    it.body
  } else {
    it
  }
  global.fullWithLine(thickness: global.lineHeading1)
  v(global.gap)
}

// heading 2
#show heading.where(level: 2): it => {
  set text(global.textHeading2)
  it
  global.fullWithLine(thickness: global.lineHeading2)
}

// heading 3
#show heading.where(level: 3): it => {
  set text(global.textHeading3)
  it
  global.fullWithLine(thickness: global.lineHeading3)
}

// header and footer
// https://github.com/typst/packages/tree/main/packages/preview/chic-hdr/0.3.0
#show: chic.with(
  skip: (1,),
  chic-offset(global.gapPage),
  chic-separator(global.linePage),
  chic-height(on: "header", 3.5cm + global.gapPage),
  chic-height(on: "footer", 1.8cm + global.gapPage),
  chic-header(
    v-center: true,
    // left-side: text(global.textHeaderFooter)[#hydra(sel: heading.where(level: 1))],
    // left-side: text(global.textHeaderFooter)[#chic-heading-name()],
    center-side: text(global.textHeading2)[*#global.title*],
    right-side: image("/images/ost_logo.jpg")
  ),
  chic-footer(
    left-side: text(global.textHeaderFooter)[#global.author],
    center-side: text(global.textHeaderFooter)[#global.thesis #global.semester],
    right-side: text(global.textHeaderFooter)[Page #chic-page-number()]
  )
)

#include "content/title-page.typ"
#include "content/abstract.typ"
#include "content/table-of-contents.typ"

#set heading(numbering: "1.1")
#show bibliography: set heading(numbering: "1.1")

#let chapters = (
  "content/introduction.typ",
  "content/research.typ",
  "content/user-study.typ",
  "content/scenarios.typ",
  "content/architecture.typ",
  "content/project-management.typ",
  "content/bibliography.typ",
  "content/glossary.typ",
  "content/lists.typ",
  "content/appendix.typ"
)

#for path in chapters {
  include path
}