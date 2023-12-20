#import "/utils/global.typ" as global

= Research
#global.paragraph(
  "Preamble",
  [
    Building on the literature review, the this chapter delves deeper into the findings from the academic and industry sources, discussing the state-of-the-art in Augmented Reality technology and its current applications in sailing and similar environments.
  ]
)
== Augmented Reality
#global.paragraph(
  [Introduction],
  [
    Augmented Reality (AR) is a technology that combines the real world with computer generated information. It enhances a user's perception by overlaying digital content onto the real world view. The content can involve text or 3D graphics. \
    Milgram et al. @Milgram.1995 have introduced the concept of a mixed reality. As seen on _ @rv_continuum _ they defined a reality-virtuality continuum representing a spectrum of experiences ranging from the entirely real world to the entirely virtual world. On this spectrum AR is more on the side of real environment.
    
    #figure(
      image("/images/research/rv_continuum.png", width: 95%),
      caption: [Reality-Virtuality Continuum by Milgram et al. @Milgram.1995],
    )<rv_continuum>
  ]
)

#global.paragraph(
  [Applications],
  [
    Augmented Reality is utilized across various domains.
    - *Guidance*: In manual assembly, AR aids operators by providing instructions. _ @ar_applications (a)_ demonstrates how the physical reality is enhanced with information on task completion, without occupying the operators hands. Enabling the operator to focus on the manual task and optimizing cognitive resources. #footnote[https://www.press.bmwgroup.com/global/photo/detail/P90343106/Training-new-staff-is-supported-by-augmented-reality-glasses-and-virtual-assistance-at-the-assembly]

    - *Expand reality*: AR is employed to visualize non existent objects or concepts._ @ar_applications (b)_ illustrates how applications can virtually showcase furniture in a user's living space. This empowers individuals to envision how diverse pieces of furniture might appear in their rooms and interact seamlessly with their current environment. Users can experiment with different colors, styles, and arrangements, enhancing their ability to make informed decisions. #footnote[https://www.ikea.com/de/de/this-is-ikea/corporate-blog/ikea-place-app-augmented-reality-puba55c67c0]

    - *Visualize the unseen*: AR unveils objects that would remain invisible under normal circumstances. Comparable to X-ray technology, this allows for a peek into objects._ @ar_applications (c)_ demonstrates how underground infrastructure is made visible. Such as water pipes, gas lines, or electrical conduits. #footnote[https://www.xyht.com/constructionbim/visualizing-hidden-infrastructure-in-3d/]

    - *Visualize data*: AR transforms abstract numbers into tangible reality. In _ @ar_applications (d)_ computer network traffic is visualized, providing a dynamic and interactive representation. This enables users to gain a real-time understanding of complex data patterns, enhancing their ability to monitor and respond to changes efficiently. #footnote[https://imld.de/en/research/research-projects/ar-graph-vis/]

    #figure(
      grid(
          columns: 2,
          rows: 4,
          column-gutter: 2pt,
          row-gutter: 0.75em,
          image("/images/research/ar_application_1_instructions.jpg"),
          image("/images/research/ar_application_2_furniture.png"),
          [(_a_)], [(_b_)],
          image("/images/research/ar_application_3_infrastructure.png"),
          image("/images/research/ar_application_4_network.jpg"),
          [(_c_)], [(_d_)]
      ),
      caption: "Augmented Reality applications (a) AR guidance during assembly (b) AR reality expansion with furniture (c) AR underground infrastructure visualization (d) AR network traffic visualization"
    ) <ar_applications>
  ]
)

#global.paragraph(
  [Hardware],
  [
    Augmented Reality is showcased on various devices.
    
    - *Optical see-through AR displays* display the digital content directly on a transparent glass into the user's field of vision. The physical reality is still visible though the glass.
      - _Head-mounted displays (HMD)_ are worn on the head. Infomally often referred to as smartglasses. An example of an HMD is the Microsoft HoloLens, shown in _ @ar_hardware (a)_. #footnote[https://www.microsoft.com/en-us/industry/blog/manufacturing-and-mobility/2019/06/17/workforce-transformation-in-the-intelligent-manufacturing-era/]
      - _Head-up displays (HUD)_ are mounted in front of the user. For example integrated in a cars windshield, as illustrated in _ @ar_hardware (b)_.

    - *Video see-through AR displays* utilize a camera to capture the real world and insert digital content into the video. The camera and display can either be integrated into the same device, as seen on _ @ar_applications (b)_ with the smartphone app. Or camera and display are separate components. #footnote[https://www.gizmochina.com/2021/11/29/volvo-new-tech-car-windshields-ar-display/]

    #figure(
      grid(
          columns: 2,
          rows: 2,
          column-gutter: 2pt,
          row-gutter: .75em,
          image("/images/research/ar_hardware_1_hololens.png"),
          image("/images/research/ar_hardware_2_windshield.png"),
          [(_a_)], [(_b_)]
      ),
      caption: "Augmented Reality hardware (a) HMD Microsoft HoloLens (b) HUD in a cars windshield"
    ) <ar_hardware>
  ]
)

#pagebreak()
== Augmented Reality in Sailing
#global.paragraph(
  [Introduction],
  [
    Understanding the relationship between wind, boat, and course is fundamental for sailing. The wind acts as the primary force shaping the direction in which the boat can navigate. The dynamic interplay of wind and chosen course dictates the optimal sail position.

    The wind is not a constant force. It changes in direction and intensity. Consequently, continual adjustments to the course and sails are required.
   
    However, the wind itself can not be seen. Its direction can only be recognized through observation. Either on tactile sensations, such as the feel on the skin, or by observing responsive elements like flags or waves that react to the wind's influence.

    Furthermore, there is the challenge of navigation. Maps are used for orientation on the water. They must be read and interpreted accurately to safely maneuver to the destination, avoiding collisions with obstacles, shallows and other vessels.
  ]
)

#global.paragraph(
  [Application of AR],
  [
    The integration of Augmented Reality into sailing holds the potential to address a spectrum of challenges. The capability for data visualization can be utilized to better understand the surrounding environment. For example the wind or relevant information for navigation. Augmented Reality demonstrates expertise in making the invisible visible, such as underwater obstacles or changes in depth. 
    It can be used to visually guide and provide precise instructions on sail positioning and maneuvers.

    There is already research concerning AR and sailing that will be reviewed in the following.
  ]
)

=== Systematic Review
#global.paragraph(
  "Component Types",
  [
    @EtienneGernez.2020 Gernez et al. conducted a review on AR application on ship bridge operations. They discussed different information components to render AR information in the environment.\
    - *App display* This component allows the display of full applications in the AR view.

    - *Widget display* This allows the display of smaller stackable information containers.

    - *Annotation* These are small information containers connected to Points Of Interest (POIs) in the world. Example: information about surrounding vessels and objects.

    - *Ocean overlay* This allows the display of information directly on the ocean. It typically shows routes and no-go zones. 

    - *AR map* This is a flat map interface placed above the horizon, able to display any map-related information.

    
    #figure(
      image("/images/research/component_types.png", width: 90%),
      caption: [Types of AR information components by Gernez et al. @EtienneGernez.2020]
    ) <component_types>

    Widget, annotation and ocean overlay are the most used component types in the revied applications. 
  ]
)

#global.paragraph(
  "Technology Development",
  [
    Gernez et al. @EtienneGernez.2020 explore the current status of Augmented Reality technology, noting that it is still in the early stages of development. They suggest that AR could play a significant role in future maritime workspaces. Drawing a parallel with the evolution of mobile phones, they foresee an expansion in AR functionalities as technology progresses. This analogy is visually represented in @technology_development, where the current state of AR technology, exemplified by the Microsoft HoloLens, is compared to early mobile phones. They predict that, much like with mobile phones, the advancement of AR hardware will lead to a broader spectrum of applications and uses.

    #figure(
      image("/images/research/technology_development.png", width: 60%),
      caption: [Technology development comparasion of mobile phones and AR displays by Gernez et al. @EtienneGernez.2020]
    ) <technology_development>
  ]
)

#global.todo("Anderer Titel? finde nicht so passend")
=== Applications

#global.todo("frider: cite am ende des satzes. Bei allen, nur hier??")

#global.paragraph(
  "AR Effectivity Evaluation",
  [
    @Laera.2023b Laera et al. evaluated an AR-based interface for sailing navigation and compared it to regular 2D sailing instruments. They conducted a user study (n=45) in an virtual reality simulated environment. They measured the reaction time and subjective metrics using user experience questionnaires.\
    Their results show that the AR-based interface outperformed common instruments in terms of reaction time, cognitive load, system usability and user experience.
  ]
)

#global.paragraph(
  "AR Sailing Interfaces",
  [
    @Laera.2023 Laera et al. designed three AR interface proposals for sailing application.

    - *Screen-Stabilized Interface* displays essential boat information in the upper part of the user's field of view. The data is displayed in nummerical form or as graphs, like in conventional 2D sailing instruments. The interface is designed for coastal navigation during recreational sailing and is suitable for users with sailing experience.
    
    #figure(
      image("/images/research/screen_stabilized_interface.png", width: 60%),
      caption: [Screen-stabilized AR 2D interface proposal by Laera et al. @Laera.2023]
    ) <screen_stabilized_interface>

    - *Body-Stabilized Interface* displays a 3D boat avatar tied to the users hand that is aligned with the real boats orientation. It is designed for sailing beginners and shows abstract vectors for meteorological phenomena. They help the user better understand the sailing process by visualizing the forces acting on the boat.

    #figure(
      image("/images/research/body_stabilized_interface.png", width: 60%),
      caption: [Body-stabilized AR 3D interface proposal by Larea et al. @Laera.2023]
    ) <body_stabilized_interface>

    - *Boat-Stabilized Interface* displays ambient information placed in the surrounding environment using graphics centered around the boats mast. It is suitable for both recreational use and for a regatta application. The interface features a high level of information detail and is useful for navigation.
    
    #figure(
      image("/images/research/boat_stabilized_interface.png", width: 60%),
      caption: [Boat-stabilized AR 3D interface proposal by Larea et al. @Laera.2023]
    ) <boat_stabilized_interface>
  ]
)

#global.paragraph(
  "Hardware Requirements",
  [
    @Laera.2020 Laera et al. specified requirements a head-mounted AR display should fulfill for use while sailing. They defined follwing points:

    - Withstand elements like water, UV rays, temperature drops, wind, humidity, and salt spray.
    - Impact resistant and securely fixed to the user's body because of the frequent collision with rig elements (e.g. ropes, boom, etc.) and crew, especially during regatta.
    - Compatible with the floatation devices, low weight, and designed to avoid risks head injury during the impact with the water at speed in case of man overboard.
    - Ergonomic and easy to wear.

    There is currently no head-mounted display available that meets the specific requirements, especially with regard to the required water resistance.
  ]
)

== Discussion

#global.paragraph(
  "Use of AR in Sailing",
  [
    The utilization of AR in a maritime context has garnered limited scientific attention. However, Dr. Francesco Laera and his team at the Polytechnic University of Bari are playing a pivotal role in this niche area, primarily through their foundational research.

    All the studies conducted to date underscore the effectiveness of augmented reality in sailing applications. User studies indicate that AR interfaces can significantly enhance reaction times and overall user experience during sailing. For beginners, AR offers an intuitive means to grasp the fundamentals of sailing, while for seasoned sailors, it provides valuable assistance in navigation and boat handling.
    
    #global.todo("prototpys somehow erwähnen")
  ]
)

#global.paragraph(
  "Component Types",
  [
    // which for sailing
    #global.todo("campare types from large bridge ships to sailing")
  ]
)

#global.paragraph(
  "AR Hardware",
  [
    #global.todo("stand ar brillen. keine die fürs segeln geht")
    // hardware needs further development as current AR HMD does not fit requirments for sailing.
  ]
)