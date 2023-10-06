#import "../../utils/global.typ" as global

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
    global.row("Duration", duration)
    global.row("Start date", start)
    global.row("End date", end)
    global.row("Description", description)
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
    global.row("Due date", due)
    global.row("Definition of done", start)
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

=== Scrum Events
==== Sprint
The work is completed in two-week sprints. Each sprint has a sprint goal and sprint increments, a small step towards the final project product.
-todo: swimlanes jira

==== Backlog Refinement
In the backlog refinement new tasks are created in the backlog and the time to complete is estimated. 

==== Sprint Planning
Before each sprint start, the sprint is filled with tasks from the backlog so that the estimated time of work is 2 weeks and a sprint goal is defined.

==== Sprint Review
 At the end of each sprint, the outcome of the Sprint is inspected and future adaptations are determinated. The Sprint review takes place in the weekly meeting with the supervisior.

==== Sprint Retrospecive
 At the end of each sprint, the last two weeks are analyzed to find ways to improve quality and effectiveness.

==== Daily Scrum Meeting
Since the project team only consists of one person, no daily Scrum meetings are held.

==== Weekly Meeting with Supervisior
Every week a meeting with the project supervisor takes place. The meeting notes can be found in the @meeting-minutes[appendix].
- todo fix link to appendix

=== Time Tracking
The worked time is recored on the ticket in order to obtain a precise evaluation of what was worked on and for how long.
- todo: at end of project. add report. appendx?

=== Sprints
- todo: im appendix?
#let sprint(title, start, end, time_estimate, time_spend, goal, increments, retro) = {
    text()[
        ==== #title
    ]
    global.row("Start date", start)
    global.row("End date", end)
    global.row("Time estimate", time_estimate)
    global.row("Time spend", time_spend)
    global.row("Sprint goal", goal)
    global.row("Sprint increments", increments)
    global.row("Retrospective", retro)
}

#sprint(
    "Sprint 1",
    "18.09.2023",
    "03.10.2023",
    "1 week 1 day or 23.5 hours",
    "25 hours (todo update)",
    "Complete project setup (Milestone 1)",
    "Project management tools. Project documentation document with chapters project plan, quality assurance and risk management.",
    "todo: retro"
)
todo: image tasks begin\
todo: image tasks ende

#sprint(
    "Sprint 2",
    "03.10.2023",
    "17.10.2023",
    "2 weeks 6 hours or 38 hours",
    "-",
    "Interviews & Literature Research",
    "Interview Guide, Interview Protocols, Literature sources",
    "-"
)
todo: image tasks begin\
todo: image tasks ende