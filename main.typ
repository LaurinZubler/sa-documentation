#import "@preview/chic-hdr:0.3.0": *
// #import "@preview/hydra:0.2.0": hydra

#import "/utils/global.typ" as global
#import "/chapters/chapters.typ": *

// document metadata
#set document(
    title: global.subtitle,
    author: global.author
)

// Text size and font 
#set text(
  global.textNormal,
  font: global.font,
)

#include "chapters/title-page.typ"

// page layout
#set page(
  margin: (left: 1.4cm, right: 1cm),
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
  v(global.gapHeading1)
}

// heading 2
#show heading.where(level: 2): it => {
  set text(global.textHeading2)
  it
  global.fullWithLine(thickness: global.lineHeading2)
  v(global.gapHeading2)
}

// heading 3
#show heading.where(level: 3): it => {
  set text(global.textHeading3)
  it
  global.fullWithLine(thickness: global.lineHeading3)
  v(global.gapHeading3)
}

// header and footer
// https://github.com/typst/packages/tree/main/packages/preview/chic-hdr/0.3.0
#show: chic.with(
  skip: (1,),
  chic-offset(global.gapPage),
  chic-separator(
    on: "header",
    gutter: 2em,
    global.linePage,
  ),  
  chic-separator(
    on: "footer",
    gutter: 1.5em,
    global.linePage,
  ),
  chic-height(on: "header", 3.2cm + global.gapPage),
  chic-height(on: "footer", 1.8cm + global.gapPage),
  chic-header(
    left-side: image("/images/ost_logo.jpg", height: 1.4cm),
    center-side: text(global.textHeading2)[*#global.title*],
    right-side: text(global.textHeaderFooter)[#global.author]
  ),
  chic-footer(
    left-side: text(global.textHeaderFooter)[#datetime.today().display("[day]. [month repr:long] [year]")],
    center-side: text(global.textHeaderFooter)[#global.thesis],
    right-side: text(global.textHeaderFooter)[Page #chic-page-number()]
  )
)

#include "chapters/abstract.typ"
#include "chapters/table-of-contents.typ"

#set heading(numbering: "1.1")
#show bibliography: set heading(numbering: "1.1")

#for path in chapters-public-version {
  include path
}