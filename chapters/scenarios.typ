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
    In this chapter, a detailed exploration of the primary conceptual scenario _Sailing Course Assistant_ is presented, showcasing a promising application of Augmented Reality in sailing. This scenario has been selected due to its comprehensive alignment with the needs and characteristics identified in the personas from the user study. It is laying the foundation for the _Architecture_ chapter, where the hardware components and considerations for the future implementation are discussed.

    Furthermore, six additional scenarios are introduced, each developed based on the research findings and the personas. These scenarios further explore various potential applications of Augmented Reality in sailing
  ]
)

== Sailing Course Assistant
#global.paragraph(
  "Foundation",
  [
    - why selected: 
    - based on what -> interviews
    - why for each persona
  ]
)
#scenario(
  (personas.at(0), personas.at(1), personas.at(2), ""), 
  ("Wind direction", "Possible sailable courses", "No-Sail Zones"),
  [
    - was ist zu sehen
      - wind direction
      - no sail zones
      - mast centered
    - why im himmel -> not hiding stuff
    - helps with

    #figure(
      image("/images/scenarios/no_sail_zone.png", width: 60%),
      caption: [Design sketch of the scenario "Sailing Course Assistant"],
    )<scenario>
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


=== Scenario 4: Sail Trim Assistant
#scenario(
  (personas.at(0), personas.at(1), ""), 
  ("Wind direction and speed", "Optimal sail position"),
  [
    #lorem(50)
  ]
)

=== Scenario 5: Sitting Position Assistant
#scenario(
  (personas.at(0), personas.at(2), ""), 
  ("Boat position in water", "Optimal sitting position"),
  [
    #lorem(50)
  ]
)

=== Scenario 6: Points of Interest Visualizer
#scenario(
  (personas.at(1), personas.at(2), ""), 
  ("Waypoints", "Obstacles", "Chart information"),
  [
    #lorem(50)
  ]
)
