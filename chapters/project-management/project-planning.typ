#import "/utils/global.typ" as global

== Project Planning
#global.paragraph(
  "Introduction",
  [
    In this section the organizing and structuring the thesis are detailed. Covered are the methodology, the tools utilized for planning and execution, and the delineation of project phases and milestones. Additionally, the implementation of Scrum and time tracking are discussed.
  ]
)

=== Method
#global.paragraph(
  [Scrum+],
  [
    In this project Scrum+ was employed, a hybrid approach blending elements of Scrum and the Rational Unified Process (RUP). From RUP, the concept of dividing the project into distinct phases was adopted, providing a structured framework for the entire project timeline. For more immediate and flexible planning, the agile methodologies of Scrum were integrated, particularly through the use of iterative sprints. This combination allowed for both long-term structural clarity and short-term adaptability in the project management.
  ]
)

=== Tools
#global.todo("maybe move more back")
#global.paragraph(
  "Jira",
  [
    As the primary tool for the project management _Jira_ by _Atlassian_ was used. It was specifically configured to align with the project's requirements, facilitating effective planning and tracking throughout the project’s duration.
    #footnote("https://www.atlassian.com/software/jira")
  ]
)

#global.paragraph(
  "Jira Extensions",
  [
    For a better experience and additional functions in _Jira_ the following extensions were integrated:
    
    - *Time Tracking:* For more accurate time tracking, _ Timesheet Tracking for Jira_ by _TouchDown_ was used.
      #footnote[https://marketplace.atlassian.com/apps/1216988/timesheet-tracking-for-jira] 
    
    - *Risk Management:* For risk tracking and analysis  _Hedge: Risk Management, Risk Register & Risk Matrix for Jira_ from _Appfire_ was employed.
      #footnote[https://marketplace.atlassian.com/apps/1227408/hedge-risk-management-risk-register-risk-matrix-for-jira] 
  ]
)

=== Phases
#global.todo("image actual phases timeline")
#global.paragraph(
  [Epics],
  [
    The project was initial segmented into rough phases, which were implemented using _Jira_ Epics. 
    Six phases were defined to structure the project's timeline and key stages.
    
    _@epics-start _ lists the epics at the project start.
    
    #v(global.gap)

    #figure(
      block(
        width: 95%,
        global.table(
          columns: (auto, auto, 1fr),
          align: start,
          [
            | *Phase*             | *Duration*  | *Description*                                     | 
            | ------------------- | ----------- | ------------------------------------------------- |
            | Project Setup       | 2 Weeks     | Setup project management tools and documentation  |
            | Analysis            | 3 Weeks     | Conduct literature research and user study        |
            | Design              | 3 Weeks     | Develop design prototype                          |
            | Implementation      | 3 Weeks     | Implement prototype                               |
            | Evaluation          | 2 Week      | Collect user feedback and evaluate prototype      |
            | Project Completion  | 1 Week      | Complete documentation and submission             |
          ]
        )
      ),
      caption: "Planned project phases at project start",
      kind: table,
    )<epics-start>
  
    #v(global.gap)

    _@timeline-start _ presents a screenshot of the _Jira_ timeline captured at the start of the project, illustrating how these phases were organized and visualized within the tool.

    #figure(
      image("/images/project-management/jira_timeline_cut.png", width: 95%),
      caption: [Screenshot _Jira_ timeline. Planned project phases at the beginning of the project],
    )<timeline-start>
 ] 
)

#global.paragraph(
  "Reorganization",
  [
    During the project, the focus of the thesis shifted. More studies were found during the literature research than initially anticipated, leading to a greater emphasis and extension of the analysis phase. 
    This shift resulted in the development of a prototype not being feasible within the project timeline. Given that the project was also a solo endeavor, the available time was limited, and developing a prototype of satisfactory was not achievable.

    For these reasons, the focus was redirected towards architecture. Determining what data would be needed to implement the scenario, which hardware components to use, and how these components would communicate with each other. Furthermore, it became apparent that writing this document required more time than initially expected.

    To accommodate these changes, the project was reorganized. The analysis phase was extended. The design,implementation and evaluation phases were removed, and a new phase dedicated to architecture was introduced. Additionally, the project completion phase was extended to allow for more focus on documentation.

    _@epics-end _ illustrates the project phases as they were actually carried out.

    #v(global.gap)

    #figure(
      block(
        width: 95%,
        global.table(
          columns: (auto, auto, 1fr),
          align: start,
          [
            | *Phase*             | *Duration*  | *Description*                                     | 
            | ------------------- | ----------- | ------------------------------------------------- |
            | Project Setup       | 2 Weeks     | Setup project management tools and documentation  |
            | Analysis            | 6 Weeks     | Conduct literature research and user study        |
            | Architecture        | 2 Weeks     | Developing a hardware for future implementaion    |
            | Project Completion  | 4 Week      | Complete documentation and submission             |
          ]
        )
      ),
      caption: "Actual project phases carried out",
      kind: table,
    )<epics-end>

    #v(global.gap)
    
    _@timeline-end _ presents a screenshot of the _Jira_ timeline captured at the end of the project, illustrating how these phases were organized and visualized within the tool.

    #figure(
      image("/images/project-management/jira_timeline_end_cut.png", width: 95%),
      caption: [Screenshot _Jira_ timeline. Actual carried out project phases],
    )<timeline-end>
  ]
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
