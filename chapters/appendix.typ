#import "/utils/document-version.typ":*

= Appendix

#let printPage(path) = {
  align(center + horizon, rect(image(path, height: 88%)))
}

#let printDocument(pages) = [
  #for page in pages {
    printPage(page)
  }
  #pagebreak(weak: true)
]

#if document-version == "full" {
  include "appendix/reflection.typ"
  pagebreak()
}

== Initial Project Definition
#let filesProjectDefinition = (
  "appendix/documents/project-definition/initial-project-definition-1.svg",
  "appendix/documents/project-definition/initial-project-definition-2.svg",
)
#printDocument(filesProjectDefinition)

#if document-version == "full" [
  == Meeting Minutes <meeting-minutes>
  #set heading(numbering: none, outlined: false)

    #let meeting_paths = (
      "appendix/meeting-minutes/week01.typ", 
      "appendix/meeting-minutes/week02.typ",
      "appendix/meeting-minutes/week03.typ",
      "appendix/meeting-minutes/week04.typ",
      "appendix/meeting-minutes/week05.typ",
      "appendix/meeting-minutes/week06.typ",
      "appendix/meeting-minutes/week07.typ",
      "appendix/meeting-minutes/week08.typ",
      "appendix/meeting-minutes/week09.typ",
      "appendix/meeting-minutes/week10.typ",
      "appendix/meeting-minutes/week11.typ",
      "appendix/meeting-minutes/week12.typ",
      "appendix/meeting-minutes/week13.typ",
      "appendix/meeting-minutes/week14.typ",
    )

    #for path in meeting_paths {
      include path
      pagebreak()
    }

  #set heading(numbering: "1.1", outlined: true)

  == Interview Transcripts
  #let filesJuerg = (
    "appendix/interviews/juerg/Interview_Juerg-1.svg", 
    "appendix/interviews/juerg/Interview_Juerg-2.svg", 
    "appendix/interviews/juerg/Interview_Juerg-3.svg", 
    "appendix/interviews/juerg/Interview_Juerg-4.svg", 
    "appendix/interviews/juerg/Interview_Juerg-5.svg", 
  )

  #let filesMarco = (
    "appendix/interviews/marco/Interview_Marco-1.svg", 
    "appendix/interviews/marco/Interview_Marco-2.svg", 
    "appendix/interviews/marco/Interview_Marco-3.svg", 
    "appendix/interviews/marco/Interview_Marco-4.svg", 
    "appendix/interviews/marco/Interview_Marco-5.svg", 
  )

  #let filesDave = (
    "appendix/interviews/dave/Interview_Dave-1.svg", 
    "appendix/interviews/dave/Interview_Dave-2.svg", 
    "appendix/interviews/dave/Interview_Dave-3.svg", 
    "appendix/interviews/dave/Interview_Dave-4.svg", 
    "appendix/interviews/dave/Interview_Dave-5.svg", 
  )

  #let filesZoe = (
    "appendix/interviews/zoe/Interview_Zoe-1.svg", 
    "appendix/interviews/zoe/Interview_Zoe-2.svg", 
    "appendix/interviews/zoe/Interview_Zoe-3.svg", 
  )

  #let filesStefan = (
    "appendix/interviews/stefan/Interview_Stefan-1.svg", 
    "appendix/interviews/stefan/Interview_Stefan-2.svg", 
    "appendix/interviews/stefan/Interview_Stefan-3.svg", 
    "appendix/interviews/stefan/Interview_Stefan-4.svg", 
    "appendix/interviews/stefan/Interview_Stefan-5.svg", 
    "appendix/interviews/stefan/Interview_Stefan-6.svg", 
  )

  === Jürg
  #printDocument(filesJuerg)

  === Marco
  #printDocument(filesMarco)

  === Zoe
  #printDocument(filesZoe)

  === Dave
  #printDocument(filesDave)

  === Stefan
  #printDocument(filesStefan)


  == Signed Declarations and rights
  === Declaration of independence
  #printPage("appendix/documents/declaration-of-independence.png")
  #pagebreak()

  === Declaration of Consent
  #printPage("appendix/documents/declaration-of-consent.png")
  #pagebreak()

  === Copyright and Usage Rights
  #printPage("appendix/documents/copyright-usage-rights.png")

]