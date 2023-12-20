#import "/utils/global.typ" as global
#import "@preview/tablem:0.1.0": tablem
#import "@preview/tablex:0.0.6": tablex, hlinex

#let participants-table = tablem.with(
  render: (columns: auto, ..args) => {
    tablex(
      columns: columns,
      auto-lines: false,
      align: center + horizon,
      hlinex(y: 0),
      hlinex(y: 1),
      ..args,
      hlinex(),
    )
  }
)

= User Study
#global.paragraph(
  [Preamble],
  [
    This chapter details the methodology, execution, and findings of the interviews. It presents the creation of personas based on the interview data, reflecting the diverse needs and preferences of the sailing community. These personas are instrumental in designing scenarios that are closely aligned with real-world requirements.
  ]
)

== Interviews
#global.paragraph(
  [Introduction],
  [
    In the pursuit of developing a deeper understanding of how Augmented Reality can be most effectively integrated into the sailing experience, this chapter delves into the heart of the sailing community itself. 
    The decision to conduct interviews was driven by the need to gain direct insights into the diverse needs, preferences, and challenges faced by sailors.
    The goal of the interviews is not merely to collect data, but to empathize with and understand the community for whom these applications are being developed. 
  ]
)

#global.paragraph(
  [Participant],
  [
    In conducting the interviews for this thesis, it was essential to gather perspectives from a variety of sailors to ensure a comprehensive understanding of different sailing experiences. Accordingly, five individuals with diverse backgrounds and expertise in sailing were interviewed.

    Four participants are affiliated with the Yacht Club Rapperswil (YCR), which organizes sailing courses at the OST each semester. Within this group, two have evolved into trainer roles, leveraging their experience to educate the next generation of sailors. The other two are fellow students who were met during sailing
    courses. The fifth participant comes from personal acquaintances.

    _@participants-characteristics _ provides a detailed overview of the sailing backgrounds and levels of the five interview participants. Two of them are primarily involved in the cruising world, navigating yachts across oceans, while the other three have a focus on regatta sailing, maneuvering smaller boats in competitive settings. The table also displays the varied mix of levels among the participants, ranging from intermediates to professionals.

    #v(2 * global.gap)

    #figure(
      block(
        width: 90%,
        participants-table(
          columns: (auto, 1fr, 1fr, 1fr),
          [
            | *\#*  | *Sailing Background*  | *Sailing Level* | *Connection*  | 
            | ----- | --------------------  | --------------- | ------------  |
            | 1     | Regatta               | Professional    | YCR           |
            | 2     | Regatta               | Advanced        | YCR           | 
            | 3     | Regatta               | Intermediate    | YCR           | 
            | 4     | Cruising / Regatta    | Advanced / Beginner| YCR           | 
            | 5     | Cruising              | Advanced        | Acquaintance  | 
          ]
        )
      ),
      caption: "Sailing characteristics of the 5 interview participants.",
      kind: table,
    )<participants-characteristics>
  ]
)

#pagebreak()

#global.paragraph(
  [Methodology],
  [
    The interview process was meticulously designed to extract valuable insights while minimally influencing the participants responses. This was achieved by carefully structuring the questions and beginning with a brief onboarding session to introduce the thesis and its objectives.

    To create a relaxed and open dialogue, the interview started with a light, non-critical question. Although not directly related to the thesis, this approach was effective in establishing a comfortable atmosphere for both  the interviewer and the participants. The next set of five questions aimed to delve into the participants sailing backgrounds.\
    The subsequent questions were focused on uncovering the specific needs and challenges faced in sailing. This helped in gaining deeper insights into the practical aspects of the sport. \
    During the interviews with the trainers, emphasis was also placed on the experiences they observe in their students, particularly focusing on those aspects with which the students find challenging and struggle.\
    The interview concluded with an open question, to encourage participants to think creatively and expansively.
  ]
)
#global.paragraph(
  "Questions",
  [
    _Ice breaker_
    + What is your first sailing experience?
    
    _Sailing background of participant_
    2. On what types of boats have you sailed or do you primarily sail?
    + What interests you in sailing?
    + What type of sailor are you? (Leisurely, racing, cruising, professional, etc.)
    + How would you rate your sailing level?
    + Where do you usually sail?

    _Sailing challenges and needs_
    7. What was difficult for you as a beginner in sailing?
    + What do you find challenging in sailing today?
    + How do you prepare for a sailing trip? Any rituals or checks?
    + What kind of information do you need while sailing?
    + What tools or technology do you use while sailing?
    + What do you have to pay attention to while sailing?
    + What are the dangers of sailing?
    + What would you like to try or learn in sailing in the future?

    _Final question_
    15. What tools or gadgets would you wish for in an ideal world?
  ]
)

#pagebreak()

== Results
#global.paragraph(
  "Introduction",
  [
    This section will present the key findings from the interviews, with an emphasis on evaluating insights for potential improvements through Augmented Reality.
  ]
)

#global.paragraph(
  "Cruising and Regatta",
  [
    The most differences in responses are influenced by the participants' sailing backgrounds, specifically whether they are regatta sailors or cruisers.

    Participants who engage in cruising place less emphasis on the technical precision of sailing. Instead, their focus is broader, encompassing the overall voyage. This includes crew handling or the efficient management of essential resources like food, water, and fuel. Furthermore, weather conditions have a major influence on their planning for routes and daily activities.

    On the other hand, regatta sailors demonstrate a different set of priorities. Their focus is centered on optimizing performance, with a significant emphasis on perfecting boat handling and finding the optimal course. This involves meticulous attention to detail in every aspect of sailing, from the precise adjustment of sails to capitalizing on wind patterns and water currents for competitive advantage.
  ]
)

#global.paragraph(
  "Sailing Level",
  [
    In examining the responses of regatta sailors, a notable distinction emerged based on their level of experience. Experienced sailors exhibit a proficiency in boat handling that appears almost instinctual. For them, operating the boat does not require conscious thought or effort. This automaticity in handling their vessel frees up cognitive resources, allowing them to focus more on strategic aspects of sailing, such as monitoring wind conditions or observing competitors' movements.

    In contrast, beginner sailors display a different set of priorities and challenges. These sailors often need to consciously think through each action in boat handling, which requires a significant amount of cognitive effort and concentration. This limits their capacity to focus on the surroundings.
  ]
)

#global.paragraph(
  "Wind and Course",
  [
    Every participant, regardless of their sailing background, underscored the importance of wind and course. These aspects were especially central for the regatta sailors, for whom they form the core of their focus during sailing.

    Regatta sailors are constantly observing the wind, its direction, strength, and changes. Reacting promptly and effectively to wind variations is crucial for them, not only for maintaining optimal speed but also for tactical reasons. Deciding when to change course, is a significant tactical decision that can grant advantage over the competitors.

    Similarly, cruisers also acknowledge the importance of wind and course. For them, understanding wind patterns is key to planning their voyage, ensuring safety, and optimizing their route.

    The unanimous emphasis on wind and course by all sailors highlights their universal significance in sailing. It suggests that Augmented Reality applications intended for sailors should prioritize providing intuitive and effective ways to monitor and respond to wind and course-related information.
  ]
)

== Personas
#global.paragraph(
  [Introduction],
  [
    Drawing from the findings of the interviews, three fictional personas were created: _The Beginner, the Racer,_ and _the Ocean Sailor_. These personas are designed to represent the different characteristics and intentions in the sailing community observed among the interview participants.
  ]
)

#global.todo("fokus auf eine persona")

=== The Beginner
#global.paragraph(
  [Portrait],
  figure(
    image("/images/personas/laura.jpeg", width: 30%),
    caption: [AI generated Portrait of Laura Dekker #footnote("https://thispersondoesnotexist.com/")]
  )
)

#global.paragraph(
  [Demographics],
  grid(
    columns: (auto, auto),
    gutter: global.gap,
    "Name:", "Laura Dekker",
    "Age:", "23",
    "Occupation:", "Student in Landscape Architecture",
  )
)

#global.paragraph(
  [Background],
  [
    Laura is a first-year landscape architecture student at the OST who likes to be outside and enjoys nature. For her studies she moved to Rapperswil and first has to build up a new circle of friends. She joined the university sailing club to connect with fellow students and try something new. The club organises a sailing courses every semester and she has registered for the beginner course. Sailing is taught on small dinghies that are operated alone.
  ]
)

#global.paragraph(
  [Sailing Experience],
  [
    After four training sessions in the beginner course, Laura has grasped the principles behind basic maneuvers like tacking and jibing. The practical application, particularly handling and steering with the tiller, remains a persistent challenge for her. She has not yet fully understood the connection between wind direction and the navigable course of the sailboat.
    Additionally, she faces challenges in low wind, struggling to discern its direction. Strong winds pose a greater challenge, often resulting in capsizing. Understanding the optimal sail position remains a puzzle for her.
  ]
)

#pagebreak()

=== The Racer
#global.paragraph(
  [Portrait],
  figure(
    image("/images/personas/sebastian.jpeg", width: 30%),
    caption: [AI generated Portrait of Sebastian Elcano #footnote("https://thispersondoesnotexist.com/")]
  )
)

#global.paragraph(
  [Demographics],
  grid(
    columns: (auto, auto),
    gutter: global.gap,
    "Name", "Sebastian Elcano",
    "Age:", "36",
    "Occupation:", "Professional Sailor",
  )
)

#global.paragraph(
  [Background],
  [
    Sebastian has been sailing since he was a child. His parents owned a boat and were passionate recreational sailors. In his childhood the family spent a lot of time on the water. As a teenager he joined the sailing club and started sailing in regattas. His passion for the sport has driven him to the top echelons of competitive racing. Now he earns his money as a professional sailor.
  ]
)

#global.paragraph(
  [Sailing Experience],
  [
    Over the years Sebastian has developed an exceptional proficiency in boat handling. He effortlessly maneuvers through various conditions. To be successful at the top of the world, the boat adjustments are a matter of a few millimeters. Tactic plays an important role. In split seconds he must make descisions.
  ]
)

#pagebreak()

=== The Ocean Sailor
#global.paragraph(
  [Portrait],
  figure(
    image("/images/personas/lisa.jpeg", width: 30%),
    caption: [AI generated Portrait of Lisa Blair #footnote("https://thispersondoesnotexist.com/")]
  )
)

#global.paragraph(
  [Demographics],
  grid(
    columns: (auto, auto),
    gutter: global.gap,
    "Name", "Lisa Blair",
    "Age:", "47",
    "Occupation:", "Architect",
  )
)

#global.paragraph(
  [Background],
  [
    Lisa is a 47 year old architect living in Switzerland. Despite beeing from a landlocked country, Lisa has developed a love for the sea. Every year she spends her vacations on a sailing yacht. Living on the boat with friends and family.
  ]
)

#global.paragraph(
  [Sailing Experience],
  [
    Lisa holds the swiss ocean license, allowing her to charter and skipper yachts. She has profound knowledge in navigation and crew handling. Safety is a major concern of her. She can handle the boat and sails, but performance isn't that important to her.
  ]
)