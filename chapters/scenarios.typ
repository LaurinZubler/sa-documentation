#import "/utils/global.typ" as global

#let personas = ("The Beginner", "The Ocean Sailor", "The Racer")

#let scenario(personas, information, description) = {
  set text(0pt) // fix strange gap behavior
  personas.pop() // workaround string array with only one element
  global.paragraph("Targeted Persona", 
    for persona in personas [
      - #persona
    ] 
  )
  v(2 * global.gap)
  global.paragraph("Displayed Information", 
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
    The _Sailing Course Assistant_ scenario was chosen for detailed elaboration based on key findings from the research and user study. A significant theme emerging from the interview responses was the importance of wind direction and the resulting navigable courses. This scenario builds upon existing application proposals identified during the research but introduces a novel feature by also visualizing the "No Sail Zones". 
    
    The _Sailing Course Assistant_ effectively addresses the needs of all three personas identified in the user study:

    - *The Beginner* often struggles to understand the connection between wind direction, navigable courses and sail position. In low wind conditions, it can be particularly challenging to discern from which direction the wind is coming. This Augmented Reality application aims to enhancing their learning and sailing experience.

    - *The Racer* is required to constantly monitor and react to changes in the wind. By visualizing the wind direction and optimal course, the Augmented Reality application can significantly reduce cognitive load, enabling a greater focus on tactics and competition strategies.

    - *The Ocean Sailor* while not primarily focused on performance, still aims to optimize the sailing experience by choosing the most efficient courses.
  ]
)
#global.paragraph(
  "Description",
  [    
    The _Sailing Course Assistant_ scenario provides the following visual aids to enhance the sailing experience:

    - *Wind Direction* This feature influences the navigable courses and the optimal sail trim.
    
    - *No Sail Zones* These are areas where sailing is not feasible due to prevailing wind conditions. They cover an area with an angle of around 40° to 45° on either side of the wind direction

    The visual aids are displayed in the sky, centered around the mast. By projecting the information above the usual line of sight, it avoids obstructing the critical view of the water ahead. This design ensures that sailors have a clear view of other boats, obstacles, and the patterns of wind and current on the water surface.
    
    _@scenario _ presents a design sketch, illustrating how the _Sailing Course Assistant_ scenario could be implemented in a real sailing context. It shows the wind direction with a blue line and the "No Sail Zones" as oranges areas. It is providing a visual representation of how these elements would appear to a sailor using the application.

    #figure(
      image("/images/scenarios/no_sail_zone.png", width: 90%),
      caption: [Design sketch of the scenario "Sailing Course Assistant". Visualizing wind direction (blue line) and the "No Sailing Zones" (orange area).],
    )<scenario>
  ]
)

== Additional Developed Scenarios
#global.paragraph(
  "Introduction",
  [
    In addition to the _Sailing Course Assistant_ scenario, six other conceptual scenarios have been developed throughout this thesis. Although these scenarios are not explored in depth within this document, they each represent a unique potential application of Augmented Reality in sailing
  ]
)

=== Scenario 1: Laera "Screen-stabilized AR 2D interface"
#scenario(
  (personas.at(1), personas.at(2), ""), 
  ("Wind speed", "Wind direction", "Compass", "Water depth"),
  [
    This scenario builds on the interface proposal from Laera et al. @Laera.2023, more described in the _Research_ chapter. The information are displayed in nummerical form or as graphs, like in conventional 2D sailing instruments.
  ]
)

=== Scenario 2: Laera "Body-stabilized AR 3D interface"
#scenario(
  (personas.at(0), ""), 
  ("Wind direction", "Compass", "Course", "Sea currents", "Water depth", "Seabed topology"),
  [
    This scenario builds on the interface proposal from Laera et al. @Laera.2023, more described in the _Research_ chapter. The information are displayed as a 3D boat avatar tied to the users hand that is
    aligned with the real boats orientation.
  ]
)

=== Scenario 3: Laera "Boat-stabilized AR 3D interface"
#scenario(
  (personas.at(1), personas.at(2), ""), 
  ("Wind direction", "Compass", "Course", "Sea currents", "Waypoints", "Obstacles"),
  [
    This scenario builds on the interface proposal from Laera et al. @Laera.2023, more described in the _Research_ chapter. The information is placed in the surrounding environment using graphics centered around the boats mast.
  ]
)


=== Scenario 4: Sail Trim Assistant
#scenario(
  (personas.at(0), personas.at(1), ""), 
  ("Wind direction and speed", "Optimal sail position"),
  [
    The _Sail Trim Assistant_ visually helps users to achive the optimal sail trim based on the wind direction.
  ]
)

=== Scenario 5: Sitting Position Assistant
#scenario(
  (personas.at(0), personas.at(2), ""), 
  ("Boat position in water", "Optimal sitting position"),
  [
    The _Sitting Position Assistant_ visually helps users to find the perfect sitting position, for achieving an optimal weight distribution on the boat and optimal performance.
  ]
)

=== Scenario 6: Points of Interest Visualizer
#scenario(
  (personas.at(1), personas.at(2), ""), 
  ("Waypoints", "Obstacles", "Chart information"),
  [
    The _Points of Intererst Visualizer_ integrates information from sea maps into the real-world view or highlights important objects in the surroundings. Including waypoints for navigation, landmarks such as ports or lighthouses and potential hazards like shallows, obstacles, or other vessels approaching.
  ]
)
