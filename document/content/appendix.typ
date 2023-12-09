= Appendix
== Meeting Minutes <meeting-minutes>
#set heading(numbering: none, outlined: false)

    #let meeting_paths = (
        "meeting-minutes/week01.typ", 
        "meeting-minutes/week02.typ",
        "meeting-minutes/week03.typ",
        "meeting-minutes/week04.typ",
        "meeting-minutes/week05.typ",
        "meeting-minutes/week06.typ",
        "meeting-minutes/week07.typ",
        "meeting-minutes/week08.typ",
        "meeting-minutes/week09.typ",
        "meeting-minutes/week10.typ",
        "meeting-minutes/week11.typ",
        "meeting-minutes/week12.typ",
        // "meeting-minutes/week13.typ",
        // "meeting-minutes/week14.typ",
    )
    #for path in meeting_paths {
        include path
        pagebreak()
    }

#set heading(numbering: "1.1", outlined: true)

== Interviews
#set heading(numbering: none, outlined: false)

    #include "interview/interview-guide.typ"
    #pagebreak()
    #include "interview/interview-marco.typ"
    #pagebreak()
    #include "interview/interview-juerg.typ"
    #pagebreak()
    #include "interview/interview-zoe.typ"
    #pagebreak()
    #include "interview/interview-dave.typ"

#set heading(numbering: none, outlined: false)