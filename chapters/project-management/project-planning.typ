#import "/utils/global.typ" as global

== Project Planning
=== Project Procedure
#global.paragraph(
    [Project Procedure],
    [
        The approach in this project is a combination of Scrum and RUP (Scrum+). From RUP, the division into phases is adopted to provide a rough structure for the entire project. For the short-term planning, the agile methodologies through iterative sprints from Scrum are adapted.
    ]
)

=== Phases
todo: table... :|
#global.paragraph(
    [Tool],
    [
        The rough planning of the project in phases was implemented using the _Jira_ Epics. Six Phases were defined.
        - todo main focus analysis, design. no time for implementation
        #figure(
            image("/images/jira_timeline.png", width: 95%),
            caption: [Planned project phases represented by Epics in the _Jira_ timeline.],
        )
        - todo image actual phases timeline
    ]
)

#let epic(title, duration, start, end, description) = {
    global.row(
        title,
        [
            #global.row("Duration", duration)
            #global.row("Start date", start)
            #global.row("End date", end)
            #global.row("Description", description)
            #v(0.5em)
        ]
    )
}

#epic(
    "Project Setup",
    "2.5 weeks",
    "18.09.2023",
    "03.10.2023",
    "todo: copy from epic description"
)

#epic(
    "Analysis",
    "3 weeks",
    "03.10.2023",
    "24.10.2023",
    "todo: copy from epic description"
)

#epic(
    "Design",
    "3 weeks",
    "24.10.2023",
    "14.11.2023",
    "todo: copy from epic description. - verlängert um zwei wochen. da viele studien gefunden zu ar und segeln. macht sinn sich da mehr zu vertiefen"
)

#epic(
    "Implementation",
    "3 weeks",
    "14.11.2023",
    "05.12.2023",
    "todo: copy from epic description"
)

#epic(
    "Evaluation",
    "1 week",
    "28.11.2023",
    "12.12.2023",
    "todo: copy from epic description"
)

#epic(
    "Project Completion",
    "1.5 week",
    "12.12.2023",
    "22.12.2023",
    "todo: copy from epic description"
)

=== Milestones
#global.paragraph(
    "Tool", 
    [
        For the end of each phase there is a milestone defined. Since Jira does not offer functionality for creating milestones, a new issue type was created for this purpose. Like work tasks, the milestones are in the backlog and are then added to sprints.
        - todo foto sprint
    ]
)

#let milestone(title, due, dod) = {
    global.paragraph(
        title,
        [
            #global.row("Due date", due)
            #global.row("Acceptance\nCriteria", dod)
            // #v(0.5em)
        ]
    )
}

#milestone(
    "M1: End of \nProject Setup",
    "03.10.2023",
    [
        todo: copy from milestone description
        - abgeschlossen 10.10.2023
        - nicht alle punkte erreicht
        - doku nicht alle kapitel geschrieben. nicht relevant für arbeit. muss einfach geschrieben werden irgendwann
        - projekt setup funktioniert soweit
    ]
)

#milestone(
    "M2: End of Analysis",
    "24.10.2023",
    [
        todo: copy from milestone description
        - verschoben um 2 Wochen nach hinten
    ]
)

#milestone(
    "M3: End of Desing",
    "14.11.2023",
    "todo: copy from milestone description"
)

#milestone(
    "M4: End of Implementation",
    "05.12.2023",
    "todo: copy from milestone description"
)

#milestone(
    "M5: End of Evaluation",
    "12.12.2023",
    "todo: copy from milestone description"
)

#milestone(
    "M6: Project Finish",
    "22.12.2023",
    "todo: copy from milestone description"
)

=== Scrum Events
#global.paragraph(
    "Sprint",
    [
        The work is completed in two-week sprints. Each sprint has a sprint goal and sprint increments, a small step towards the final project product.
        -todo: swimlanes jira
    ]
)

#global.paragraph(
    "Backlog Refinement",
    [
        In the backlog refinement new tasks are created in the backlog and the time to complete is estimated. 
    ]
)

#global.paragraph(
    "Sprint Planning",
    [
        Before each sprint start, the sprint is filled with tasks from the backlog so that the estimated time of work is 2 weeks and a sprint goal is defined.
    ]
)

#global.paragraph(
    "Sprint Review",
    [
        At the end of each sprint, the outcome of the Sprint is inspected and future adaptations are determinated. The Sprint review takes place in the weekly meeting with the supervisior.
    ]
)

#global.paragraph(
    "Sprint Retrospecive",
    [
        At the end of each sprint, the last two weeks are analyzed to find ways to improve quality and effectiveness.
    ]
)

#global.paragraph(
    "Daily Scrum Meeting",
    [
        Since the project team only consists of one person, no daily Scrum meetings are held.
    ]
)

#global.paragraph(
    "Weekly Meeting with Supervisior",
    [
        Every week a meeting with the project supervisor takes place. // only in full verions: The meeting notes can be found in the @meeting-minutes[appendix].
        - todo fix link to appendix
    ]
)


=== Time Tracking
The worked time is recored on the ticket in order to obtain a precise evaluation of what was worked on and for how long.
- todo: at end of project. add report. appendx?
- total hours. break down to weeks

=== Sprints
- todo: im appendix?
#let sprint(start, end, time_estimate, time_spend, goal, increments, retro) = {
    global.paragraph("Start date", start)
    global.paragraph("End date", end)
    global.paragraph("Time estimate", time_estimate)
    global.paragraph("Time spend", time_spend)
    global.paragraph("Sprint goal", goal)
    global.paragraph("Sprint increments", increments)
    global.paragraph("Retrospective", retro)
}

- todo: tabellle .... :¬|
==== Sprint 1
#sprint(
    "18.09.2023",
    "03.10.2023",
    "1 week 1 day or 23.5 hours",
    "25 hours (todo update)",
    "Complete project setup (Milestone 1)",
    "Project management tools. Project documentation document with chapters project plan, quality assurance and risk management.",
    "todo: retro"
)
- todo: image tasks begin
- todo: image tasks ende
- retro: zeitschätzung für doku zu gering. aufsetzen typst mehr zeit. schreiben auch mehr zeit, da zuerste überlegen wie und was genau. 

==== Sprint 2
#sprint(
    "03.10.2023",
    "17.10.2023",
    "2 weeks 6 hours or 38 hours",
    "-",
    "Interviews & Literature Research",
    "Interview Guide, Interview Protocols, Literature sources",
    "-"
)
- todo: image tasks begin
- todo: image tasks ende
- retro: zu wenig zeit gefunden, stundensoll nicht erfüllt. doku fertig machen wurde verschoben, outcome produzieren. viele RA&Sail Studien gefunden, mehr eintauchen in studien, dahher desing phase verlängern. schätzung interviews zu gering, post work. schätzung recherche zu gross, war einfacher als gedacht.

==== Sprint 3
#sprint(
    "17.10.2023",
    "31.10.2023",
    "2 weeks 2 hours or 34 hours",
    "-",
    "Deep dive into the Studies & Interviews",
    "Interviews Evaluation, Literature Summary",
    "-"
)
- todo: image tasks begin
- todo: image tasks ende
