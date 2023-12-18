#import "/utils/global.typ" as global

#let personas = ("The Beginner", "The Ocean Sailor", "The Racer")

#let scenario(personas, information, description) = {
  set text(0pt) // fix strange gap behavior
  personas.pop() // workaround string array with only one element
  global.paragraph("Targeted Persona", personas.join(", ", last: " and "))
  v(2 * global.gap)
  global.paragraph("Ambient Information", 
    for info in information [
      - #info
    ]    
  )
  v(2 * global.gap)
  global.paragraph("Description", description)
}

= Scenarios
#global.paragraph(
  [Preamble],
  [
    In this chapter, seven conceptual scenarios are presented, each exploring a potential application of Augmented Reality in sailing. These scenarios have been developed based on the research and the personas identified in the user study. Furthermore, one chosen scenario is highlighted for more detailed examination, setting the groundwork for the _Architecture_ chapter, where the hardware components and considerations for its future implementation will be thoroughly discussed.
  ]
)

== All Conceptual Scenarios
#global.paragraph(
  "Introduction",
  [
    Each scenario is further detailed, with the target personas identified and the specific ambient information displayed.
  ]
)

=== Scenario 1: Laera "Screen-stabilized AR 2D interface"
#scenario(
  (personas.at(1), personas.at(2), ""), 
  ("Wind speed and direction", "Compass", "Water depth"),
  [
    This scenario builds on the interface proposal from Laera et al. @Laera.2023, more described in the _Research_ chapter. 
  ]
)

=== Scenario 2: Laera "Body-stabilized AR 3D interface"
#scenario(
  (personas.at(0), ""), 
  ("Wind direction", "Compass", "Course", "Sea currents", "Water depth", "Seabed topology"),
  [
    This scenario builds on the interface proposal from Laera et al. @Laera.2023, more described in the _Research_ chapter. 
  ]
)
#global.todo("pagebreak")
#pagebreak()
=== Scenario 3: Laera "Boat-stabilized AR 3D interface"
#scenario(
  (personas.at(1), personas.at(2), ""), 
  ("Wind direction", "Compass", "Course", "Sea currents", "Waypoints", "Obstacles"),
  [
    This scenario builds on the interface proposal from Laera et al. @Laera.2023, more described in the _Research_ chapter. 
  ]
)

=== Scenario 4: Sailing course assistance
#scenario(
  (personas.at(0), personas.at(1), ""), 
  ("Wind direction and speed", "Possible sailable courses"),
  [
    #lorem(50)
  ]
)

=== Scenario 5: Sail trim assistance
#scenario(
  (personas.at(0), personas.at(1), ""), 
  ("Wind direction and speed", "Optimal sail position"),
  [
    #lorem(50)
  ]
)

=== Scenario 6: Sitting position assistance
#scenario(
  (personas.at(0), personas.at(2), ""), 
  ("Boat position in water", "Optimal sitting position"),
  [
    #lorem(50)
  ]
)

=== Scenario 7: Points of interest visualisation
#scenario(
  (personas.at(1), personas.at(2), ""), 
  ("Waypoints", "Obstacles", "Chart information"),
  [
    #lorem(50)
  ]
)

== Detail Scenario: Sailing course assistance

#figure(
      image("/images/scenarios/no_sail_zone.png", width: 40%),
      caption: [],
    )<scenario>