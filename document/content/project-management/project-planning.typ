== Project Planning
=== Project Procedure
The approach in this project is a combination of Scrum and RUP (Scrum+). From RUP, the division into phases is adopted to provide a rough structure for the entire project. For the short-term planning, the agile methodologies through iterative sprints from Scrum are adapted.

=== Management Tools
_Jira_ from _Atlassian_ #footnote[https://www.atlassian.com/software/jira]
 was selected as the project planning tool and configured accordingly for the project. For more accurate time tracking, _TouchDown_’s  _Timesheet Tracking for Jira_ #footnote[https://marketplace.atlassian.com/apps/1216988/timesheet-tracking-for-jira]
 was integrated into _Jira_.

=== Phases
The rough planning of the project in phases was implemented using the _Jira_ Epics. Six Phases were defined.

#figure(
  image("../../images/jira_timeline.png", width: 95%),
  caption: [Project phases represented by Epics in the _Jira_ timeline.],
)

#let epic(title, duration, start, end, description) = {
    text()[
        === #title
    ]
    grid(
        columns: (1fr, 3fr),
        rows: (1.4em, 1.4em, 1.4em, auto),
        [Duration], [#duration], 
        [Start date], [#start], 
        [End date], [#end], 
        [Description], [#description] 
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
    "todo: copy from epic description"
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
A milestone was defined at the end of each phase. Since Jira does not offer functionality for creating milestones, a new issue type was created for this purpose. Like normal tasks, the milestones are in the backlog and are then added to a sprint.

#let milestone(title, due, dod) = {
    text()[
        === #title
    ]
    grid(
        columns: (1fr, 3fr),
        rows: (1.4em, auto),
        [Due date], [#due], 
        [Definition of done], [#dod] 
    )
}

#milestone(
    "M1: End of Project Setup",
    "03.10.2023",
    "todo: copy from milestone description"
)

#milestone(
    "M2: End of Analysis",
    "24.10.2023",
    "todo: copy from milestone description"
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

=== Sprints
- time estimate
- duration
- goal
==== Sprint 1
- tasks
- estimate, actual
- retro
==== Sprint 2
==== Sprint 3
==== Sprint 4
==== Sprint 5
==== Sprint 6
==== Sprint 7
=== Meetings
- backlog management (refinement meetings)
- sprint retro
- weekly
    - meeting notes
- no daily
=== Time Tracking
- estimate