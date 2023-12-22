#import "/utils/global.typ" as global

= Architecture
#global.paragraph(
  [Preamble],
  [
    This chapter proposes a architecture for the hardware components for the implementation of the _Sailing Course Assistant_ scenario. First an overview over all components is presented and further each component is more detailed descussed. This includes the technical feasibility and potential integration with existing sailing equipment.
  ]
)

== Hardware Components Overview
#global.paragraph(
  "Components",
  [
    In this section, the hardware components of the Augmented Reality application are presented. 
    
    The system consists of the following components:

    - *Wind Sensor:* This device is responsible for measuring the wind direction.

    - *Gateway:* The gateway acts as a central hub, receiving data from the wind sensor. It processes and prepares this data for display on the Augmented reality dispaly. The gateway's design allows for future expansion, enabling the addition of more sensors to enhance the application's functionalities.

    - *Augmented Reality Display:* This is the interface where users interact with the application. It visually displays the wind direction and the "No Sail Zones", integrated into the user's environment.

    Regarding connectivity, the wind sensor is wired to the gateway to ensure stable data transmission. The connection between the gateway and the Augmented Reality display is wireless, allowing for greater flexibility and ease of movement for the user.

    _@components _ illustrates the layout of the system, showing the connections between the wind sensor, gateway, and Augmented Reality display.

    #figure(
      image("/images/architectur/components.png"),
      caption: [Proposed hardware component diagram for the implementation of the _Sailing Course Assisant_]
    )<components>
  ]
) 

#pagebreak()

#global.paragraph(
  "Open Source Projects",
  [
    In the realm of marine software and hardware development, a community is actively engaged in creating and sharing boat projects online #footnote("https://open-boat-projects.org/en/"). These projects are often made open source and can be utlized for the implementation of the _Sailing Course Assistant_ scenario.

    Two open source projects are particularly notable for their applicability:
    - *Signal K Platform* #footnote("https://signalk.org/index.html") The Signal K Data Standard is a modern, open data format tailored for marine use. Built on standard web technologies like JSON, WebSockets, and HTTP, it is both universally accessible and adaptable. Designed to work with common marine hardware, Signal K also offers a server solution for the Raspberry Pi that can connect to marine sensors. For the implementation of the Augmented Reality application, the Signal K server on a Raspberry Pi could serve as the gateway, using its data format to facilitate communication between the gateway and the Augmented Reality Display.

    - *DIY Wind Sensor* #footnote("https://open-boat-projects.org/en/diy-windsensor/") This project offers instructions for creating a cost-effective wind sensor suitable for sailing applications, using a 3D printer. It includes comprehensive instructions and resources, presenting a budget-friendly alternative to purchasing expensive wind sensors. For the implementation of the Augmented Reality application, the DIY Wind Sensor provides an economical solution to obtain essential wind direction.
  ]
)

#global.paragraph(
  [Hardware Parts],
  [ 
    For the implementation of the Augmented Reality application, specific hardware parts are essential. 
    These parts are listed in _@hardware _. This table also serves as a convenient checklist for acquiring all necessary elements before startig a future implementation and estimates the prices for purchasing the parts.
    
    #figure(
      block(
        width: 90%,
        global.table(
          columns: (auto, 1fr, 1fr),
          align: start,
          [
            | *Part*                          | *Component*     | *Estimated Price* | 
            | ------------------------------- | --------------- | ----------------- |
            | Microsoft HoloLens 2            | AR Display      | € 3'849           |
            | Waterproof HoloLens Caseing     | AR Display      | unavailable       |
            | 3D printed Wind Sensor          | Wind Sensor     | <= € 250          |
            | Raspberry Pi                    | Gateway         | € 40              |
            | Waterproof Raspberry Pi Caseing | Gateway         | € 70              |
            | Cables                          | Communication   | € 20              |
          ]
        )
      ),
      caption: [Essential hardware parts for the implementation of the _Sailing Course Assisant_],
      kind: table,
    )<hardware>
  ]
) 

#pagebreak()

== Augmented Reality Display
#global.paragraph(
  "Microsoft HoloLens",
  [
    For the implementation of our Augmented Reality application, a head-mounted display (HMD) is the most practical option. An HMD, like the Microsoft HoloLens 2, allows for hands-free operation, crucial for managing the controls of a boat. Unlike statically mounted video see-through displays, which offer no significant advantage over existing boat instruments, an HMD doesn't require the user to translate information from a 2D display into the real world.

    As the literature research revealed, there are currently no Augmented Reality head-mounted display on the market that fully meets the requirements for sailing. However, the Microsoft HoloLens 2 stands out with its numerous features and widespread adoption. Therefore, the desicion has been made to use the HoloLens for the further planning of the architecture.

    _@hololens _ is illustrating a Micosoft HoloLens 2 worn by a person.
    
    #figure(
      image("/images/research/ar_hardware_1_hololens.png", width: 75%),
      caption: 
      [
        Microsoft HoloLens 2 worn by a person
        #footnote("https://www.microsoft.com/en-us/industry/blog/manufacturing-and-mobility/2019/06/17/workforce-transformation-in-the-intelligent-manufacturing-era/")
      ]
    ) <hololens>
  ]
)
  
 #global.paragraph(
  "Unity",
  [   
    For developing Augmented Reality applications, referred to as holograms within the HoloLens ecosystem, the Unity platform is a suitable choice  #footnote("https://unity.com/unity/features/ar"). Applications built with Unity are also compatible with other Augmented Reality displays, offering flexibility in development. For instance, smartphones, which often have better waterproofing, can be used during the development phase. Moreover, when a waterproof Augmented Reality HMD suitable for sailing becomes available, the developed application can be easily adapted to run on it.
  ]
)

#global.paragraph(
  [Moving \ Platform \ Mode],
  [
    The HoloLens needs to track its position in six degrees of freedom to display stable holograms. X, Y, and Z translation, along with roll, pitch, and yaw rotation.
    
    This is achieved by combining information from this two sources: 

    + *Visible light cameras* to track the environment. For example, the physical room in which the HoloLens is used.
    + *Inertial Measurement Unit (IMU)* consisting of an accelerometer, gyroscope, and magnetometer to track motion and orientation relative to Earth.
    
    However, for accurate tracking, the environment needs to be stationary relative to earh. On a moving platform, like a sailboat, tracking errors can lead to distorted holograms or loss of tracking. Similar to humans when actual and expected motion are not matching, the HoloLens is getting "motion sick".

    Recognizing this challenge, Microsoft introduced the Moving Platform Mode (MPM)#footnote("https://learn.microsoft.com/en-us/hololens/hololens2-moving-platform") in 2022. MPM adjusts the HoloLens to expect variations in sensor inputs, acknowledging that perfect sensor agreement is unlikely in a moving environment. While Microsoft has tested MPM on small boats, they note that it is currently optimized for large marine vessels experiencing low-dynamic motion. Whether the HoloLens can effectively operate on a smaller sailing vessels remains to be tested.
  ]
)

#global.paragraph(
  [Orientation],
  [
    For accurate display of information, the HoloLens requires knowledge of its position relative to the boat. The wind sensor determines the wind direction as an angle to the boat's longitudinal axis, making it essential for the HoloLens to also align with the boat's axis. Furthermore, the objective is to present the information relative to the boat, centering the hologram at the boat's mast.

    A potential solution for establishing this orientation involves the use of QR codes. These QR codes could be placed on the mast, allowing the HoloLens to recognize them through its camera and thus determine its relative position. However, the effectiveness of this approach in real-world conditions remains to be tested.
  ]
)

#global.paragraph(
  "Sunlight",
  [
    When considering the use of the HoloLens in an outdoor environment, there are important factors to take into account, given that the device is primarily designed for indoor use. Two major considerations arise for its outdoor application:

    + *Display Visibility:* It's crucial to determine whether the display of Augmented Reality content is visible in bright sunlight. Since the HoloLens is not originally optimized for high-light conditions, the clarity and visibility of the holographic display under direct sunlight need to be thoroughly tested.

    + *Camera Functionality for Orientation:* Another significant aspect is the capability of the HoloLens cameras to capture QR codes in outdoor lighting conditions. The effectiveness of the cameras in bright light must be evaluated to ensure accurate positioning and display of the Augmented Reality content.
  ]
)

#pagebreak()

== Wind Sensor
#global.paragraph(
  "Wind Sensor",
  [
    For the implementation of the _Sailing Course Assistant_ scenario, a wind sensor is required to measure the wind direction. These sensors are commonly installed on sailboats, usually at the top of the mast.

    _@wind_sensor _ is illustrating two types of wind measurement devices: on the left, a wind vane, which visually indicates the direction of the wind, and on the right, a digital wind sensor. The digital wind sensor is able to transmit the measured information digitally. For the implementation of the scenario a digital wind sensor is required.

    #figure(
      image("/images/architectur/wind_sensor.jpg", width: 50%),
      caption: [
        Wind vane (left) and wind sensor (right) mounted on top of the mast of a sail boat
        #footnote("https://www.cruisersforum.com/forums/f13/wind-vane-on-front-of-boat-230923.html")
      ]
    ) <wind_sensor>
  ]
)

== Gateway
#global.paragraph(
  "Gateway",
  [
    The wind sensor cannot be connected directly to the HoloLens. Instead, a gateway is required to bridge the sensor and the Augmented Reality display. This gateway processes the wind information, including calculating the "No Sail Zones" displayed in the application, and then transmits the processed data to the HoloLens. This setup not only facilitates the current functionality but also allows for the integration of additional sensors in the future, enhancing the application's capabilities.
  ]
)

#global.paragraph(
  "Communication",
  [
    For safety and convenience, the transmission from the gateway to the HoloLens should be wireless, avoiding any hindrance or danger to the user. The HoloLens is equipped with Bluetooth or Wi-Fi modules, which can be utilized for this wireless communication.
  ]
)