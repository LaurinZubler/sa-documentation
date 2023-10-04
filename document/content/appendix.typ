= Appendix

== Meeting Minutes <meeting-minutes>
#set heading(numbering: none)

#let meeting_paths = (
    "meeting-minutes/week01.typ", 
    "meeting-minutes/week02.typ",
)
#for path in meeting_paths {
    include path
    pagebreak()
}