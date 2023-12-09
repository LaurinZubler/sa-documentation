#import "/utils/global.typ" as global

= Scenarios
#global.paragraph(
  [Introduction],
  [
    Based on the research and interviewd persons, possible scenarios for an augmented reality solution for sailing were created. First all scenarios are listed with a short description and for with persona the scenario is inteded, as well as on what they are based on. The selected scenario that is to be implemented is then further described.
  ]
)

#global.paragraph(
  [Scenario list],
  [
    #table(
      columns: (auto, auto, auto, auto),
      inset: global.gap,
      [*Title*], [*Persona*], [*Verification*], [*Description*],
      [Laera "Screen-stabilized AR 2D interface"], [Racer, Ocean Sailor], [], [],
      [Laera "Body-stabilized AR 3D interface"], [Beginner], [], [],
      [Laera "Boat-stabilized AR 3D interface"], [Racer, Ocean Sailor], [], [],
      [Sailable area], [Beginner], [], [],
      [Sail trim], [Beginner, Racer, Ocean Sailor], [], [],
      [Sitting position], [Beginner, Racer], [], [],
      [Navigation], [Racer, Ocean Sailor], [], [],
    )
  ]
) 