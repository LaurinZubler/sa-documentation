#import "/utils/global.typ" as global

#let meeting(title, date, doc) = [
  === Week #title

  #global.paragraph(
    "Date", date
  )
  #global.paragraph(
    "Notes", doc
  )
      
]
