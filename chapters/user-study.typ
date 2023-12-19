#import "/utils/global.typ" as global
#import "@preview/tablem:0.1.0": tablem
#import "@preview/tablex:0.0.6": tablex, hlinex

#let participants-table = tablem.with(
  render: (columns: auto, ..args) => {
    tablex(
      columns: (auto, 1fr, 1fr, 1fr),
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
  [Participant Recruitment],
  [
    In conducting the interviews for this thesis, it was essential to gather perspectives from a variety of sailors to ensure a comprehensive understanding of different sailing experiences. Accordingly, five individuals with diverse backgrounds and expertise in sailing were interviewed.

    Four participants are affiliated with the Yacht Club Rapperswil (YCR), known for organizing sailing courses at the OST each semester. Within this group, two have evolved into trainer roles, leveraging their experience to educate the next generation of sailors. The other two are fellow students who were met during sailing
    courses. The fifth participant comes from personal acquaintances.

    _@participants-characteristics _ provides a detailed overview of the sailing backgrounds and levels of the five interview participants. Two of them are primarily involved in the cruising world, navigating yachts across oceans, while the other three have a focus on regatta sailing, maneuvering smaller boats in competitive settings. The table also displays the varied mix of levels among the participants, ranging from intermediates to professionals.

    #figure(
      block(
        width: 90%,
        inset: global.gap,
        participants-table(
          [
            | *\#* | *Sailing Background* | *Sailing Level* | *Connection* | 
            | ---- | -------------------- | -------------------- | ------- |
            | 1  | Regatta | Professional | YCR |
            | 2  | Regatta | Advanced | YCR | 
            | 3  | Regatta | Intermediate | YCR | 
            | 4  | Cruising | Advanced | YCR | 
            | 5  | Cruising | Advanced | Acquaintance | 
          ]
        )
      ),
      caption: "Sailing characteristics of the 5 interview participants.",
      kind: table,
    )<participants-characteristics>
  ]
)
    
  


#global.paragraph(
  [Questions],
  [
    - break ice, sailor typ, challenges
  ]
)

== Results
- cursier segeln nicht so wichtig. verpflegung, menschenführung, 
- wind und course


#pagebreak()
== Personas
#global.paragraph(
  [Introduction],
  [
    Based on the interviewd persons, three fictional personas were created. By analyzing the interview responses, three categories of sailors could be derived. Beginner, racer and ocean sailor. In the following the personas are described further.
  ]
)

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