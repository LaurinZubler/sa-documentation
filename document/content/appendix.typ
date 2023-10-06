= Appendix

== Meeting Minutes <meeting-minutes>
#set heading(
    numbering: none,
    outlined: false
)

#let meeting_paths = (
    "meeting-minutes/week01.typ", 
    "meeting-minutes/week02.typ",
    "meeting-minutes/week03.typ",
)
#for path in meeting_paths {
    include path
    pagebreak()
}