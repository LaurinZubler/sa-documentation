// #let title = "Use of augmented reality for visualizing ambient conditions while sailing"
#let title = "Use of Augmented Reality for Visualizing Ambient Conditions while Sailing"
#let subtitle = "Semester Thesis"
#let semester = "Fall 2023"
#let author = "Laurin Zubler"
#let advisor = "Frieder Loch"

#let paragraph(title, content) = {
    grid(
        columns: (1fr, 3fr),
        [*#title*], content,
    )
}

#let row(title, content) = {
    grid(
        columns: (1fr, 3fr),
        title, content,
    )
}
