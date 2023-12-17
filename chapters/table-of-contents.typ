#import "@preview/outrageous:0.1.0"
#import "/utils/global.typ" as global

// https://github.com/typst/packages/tree/main/packages/preview/outrageous/0.1.0
#show outline.entry: outrageous.show-entry.with(
  ..outrageous.presets.outrageous-toc,
  font: (global.font, auto)
)

#outline(
    title: "Table of Contents",
    depth: 3,
    indent: auto,
)

// #outline()