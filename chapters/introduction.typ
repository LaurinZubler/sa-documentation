#import "/utils/global.typ" as global

= Introduction
#global.paragraph(
  "Preamble",
  [
    This chapter serves as an overview of the entire thesis. It begins with a brief discussion of the complexities in sailing, proceeds to describe the primary aim of this thesis, and provides an overview of the methodology that was employed. 
  ]
)

== The Challenges of Sailing
#global.paragraph(
  "Introduction",
  [
    Sailing is a skillful blend of art and science, particularly evident in the understanding and utilization of wind and the selection of sailable courses. This section briefly explores these core challenges, setting the stage for the potential enhancements that Augmented Reality can offer in this domain.
  ]
)

#global.paragraph(
  "Wind",
  [
    One of the most significant challenges in sailing is the mastery of wind. Sailors must read and interpret wind patterns, which are often unpredictable and change rapidly. Understanding wind direction, strength, and shifts is crucial, as these factors directly influence the boat's speed and maneuverability. 
  ]
)

#global.paragraph(
  "Course",
  [
    Navigating a sailboat also involves the strategic selection of sailable courses. This requires not just an understanding of the wind but also the ability to plot a course that maximizes efficiency and safety. Sailors must constantly make decisions about the best angles to sail relative to the wind, considering factors like current, tide, and potential hazards.

    _@sailable-courses _ illustrates the "no-sail zones" for a sailboat, depicted in gray. These zones represent the angles at which a sailboat cannot sail, typically around 40° to 45° on either side of the wind direction. Additionally, the diagram highlights the downwind area where sailing is also challenging. The exact angles of these 'no-sail zones' can vary depending on the type and design of the boat, reflecting differences in sailing capabilities and characteristics.

    #figure(
      image("/images/introduction/sailable_courses.png", width: 38%),
      caption: [Possible courses of a sailing boat with respect to the wind @Erckens.2010],
    )<sailable-courses>
  ]
)

#global.paragraph(
  "Points of Sail",
  [
    Given the wind direction and the chosen course, the positions of the sails are determined. The adjustment of the sails to optimize their shape and angle, is key to harnessing the wind's power effectively. It is a dynamic process, requiring continuous attention and fine-tuning. Effective sail trim balances the boat's speed and stability, and is essential for navigating efficiently and safely in varying wind conditions.

    _@points-of-sail _ illustrates the various points of sail in relation to the wind direction. It also highlights the "no-sail zone", where the sails are unable to generate sufficient force for movement, leading to flapping and loss of control.

    #figure(
      image("/images/introduction/points_of_sail2.png", width: 70%),
      caption: [Points of sail with shaded "no-sail zone"#footnote("https://en.wikipedia.org/wiki/Point_of_sail") \ A: Into the wind B: Close-hauled C: Beam reach D: Broad reach E: Downwind ],
    )<points-of-sail>
    
  ]
)

#pagebreak()

#global.paragraph(
  "Common Instruments",
  [
    Due to the reliance on wind in sailing, various tools are utilized to assist in determining the wind direction. Nowadays, this task is often accomplished using electronic instruments.

    _@instruments _ depicts an electronic wind indicator. The blue outline represents the boat and aligns with the boat's actual axis. The red pointer indicates the direction from which the wind is coming. In the example, it is approximately 120° from the starboard side. This corresponds in _@points-of-sail _ to a sail position of _Broad reach_, represented by the left boat marked with a _D_. Additionally, the wind speed is also displayed, indicating 5 knots.

    #figure(
      image("/images/introduction/wind_censored.jpg", width: 40%),
      caption: [Common sailing instrument. Displaying wind angel (red indicator) relativ to the boat (blue outline) and wind speed in knots #footnote("https://www.outbackmarine.com.au/garmin-gmi-20-marine-instrument")],
    )<instruments>
  ]
)

#global.paragraph(
  "Cognitive Challenge",
  [
    Translating the abstract information provided by these instruments into practical application requires good spatial imagination and experience. The 2D representation of wind direction and speed on common instruments, can be challenging to interpret in a real-world, three-dimensional sailing context. Sailors must mentally visualize how the wind interacts with their sails and course, a skill that typically develops with practice and time. This could be simplified by Augmented Reality.
  ]
)

#pagebreak()

== The Aim of this Thesis
#global.paragraph(
  "Introduction",
  [
    The primary aim of this thesis is to explore and evaluate how Augmented Reality technology can be integrated into the realm of sailing to address its challenges. This exploration involves a detailed assessment of the practicality and effectiveness of AR in enhancing sailing experiences.
  ]
)

#global.paragraph(
  "Usability",
  [
    Central to this thesis is a human-centered approach, which prioritizes the user experience in sailing contexts. This involves understanding the needs and preferences of sailors of varying levels of expertise and designing AR interfaces that are intuitive, informative, and easy to use. The goal is to reduce the cognitive load associated with common sailing instruments, making navigation and sail management more accessible, especially for those with less experience.
  ]
)

#global.paragraph(
  "Technological Feasibility",
  [
    Alongside usability, this thesis delves into the technological aspects of implementing AR in sailing. This includes examining the current state of AR technology, its potential for integration with existing sailing equipment, and the development of new solutions. The feasibility study considers factors such as the durability of AR devices in marine environments, their ability to operate effectively under various weather conditions, and the integration of real-time environmental data.
  ]
)

== Methodology
#global.paragraph(
  "Introduction",
  [
    The methodology of this thesis was designed to be comprehensive and multifaceted, encompassing both theoretical and practical perspectives on the integration of Augmented Reality in sailing. It is divided into four parts: Research, User Study, Scenarios, and Architecture.
  ]
)

#global.paragraph(
  "Research",
  [
    The first part involved an extensive literature review, aimed at assessing the current state of Augmented Reality applications in sailing and related domains. This entailed a thorough analysis of systematic reviews and case studies to understand the advancements, challenges, and gaps in the field. This review lays the foundation for the _Research_ chapter, which delves into these findings in greater detail.
  ]
)

#global.paragraph(
  "User Study",
  [
    The second part consisted of conducting targeted interviews with a diverse group of five sailors. This user study was crucial in gathering firsthand insights into the specific needs and preferences of sailors with varying levels of experience. The outcomes of these interviews are the focus of the _User Study_ chapter, which presents a detailed analysis of the interview data and the development of personas representing the sailing community.
  ]
)

#global.paragraph(
  "Scenarios",
  [
    Building on the insights from both the research and the user study, the third part involved developing potential Augmented Reality scenarios for sailing. This part is conceptualizing how Augmented Reality could be practically applied to meet the needs and challenges of the sailing community. In the _Scenarios_ chapter, a detailed exploration of these applications is presented, including the primary scenario _Sailing Course Assistant_.
  ]
)

#global.paragraph(
  "Architecture",
  [
    The final part of the thesis addresses the technical implementation of Augmented Reality in sailing, specifically through the proposed architecture for the _Sailing Course Assistant_ scenario. The _Architecture_ chapter outlines a system that balances both hardware and software needs. It discusses how this architecture integrates with existing sailing equipment and addresses technological challenges.
  ]
)