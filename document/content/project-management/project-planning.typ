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
        ==== #title
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
For the end of each phase there was a milestone defined. Since Jira does not offer functionality for creating milestones, a new issue type was created for this purpose. Like work tasks, the milestones are in the backlog and are then added to sprints.
- todo foto sprint

#let milestone(title, due, dod) = {
    text()[
        ==== #title
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
The tasks are completed in two-week sprints. Before each sprint start, the sprint is filled with tasks from the backlog so that the estimated time of work is 2 weeks. Each sprint has a sprint goal and sprint increments, a small step towards the final project product. At the end of each sprint, it is analyzed in a retrospective to find ways to improve the quality and effectiveness.

#let sprint(title, start, end, time_estimate, time_spend, description, increments, retro) = {
    text()[
        ==== #title
    ]
    grid(
        columns: (1fr, 3fr),
        rows: (1.4em, 1.4em, 1.4em, 1.4em, 1.4em, 2*1.4em, auto),
        [Start date], [#start], 
        [End date], [#end], 
        [Time original estimate], [#time_estimate], 
        [Time actual spend], [#time_spend], 
        [Sprint goal], [#description],
        [Sprint increments], [#increments],
        [Retrospective], [#retro]
    )
}

#sprint(
    "Sprint 1",
    "18.09.2023",
    "03.10.2023",
    "23.5 hours",
    "25 hours (todo update)",
    "Complete project setup (Milestone 1)",
    "Project management tools. Project documentation document with chapters project plan, quality assurance and risk management.",
    "todo retro"
)
todo: image tasks begin\
todo: image tasks ende
=== Meetings
- backlog management (refinement meetings)
- sprint retro
- weekly
    - meeting notes
- no daily
=== Time Tracking
- estimate