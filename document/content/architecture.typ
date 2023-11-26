#import "/utils/global.typ" as global

#global.paragraph(
  [Introduction],
  [
    This chapter describes the software and hardware components required to implement the selected scenario.
  ]
)


== Augmented Reality Display
#global.paragraph(
  [Microsoft HoloLens],
  [
    Based on the requirements in sailing, a head-mounted display makes the most sense for the implementaion of the scenario. An HMD allows for hands-free operation, enabling control of the boat. \
    A statically mounted video see-through display would not offer any advantage over existing instruments on boats. The user would still need to translate the information from a 2D indicator into the real world.
    
    As seen in our own market analysis and confirmed during research, there is currently no augmented reality head-mounted display that fulfills the requirements for use on a sailing boat.\
    Todo: ref research

    Therefore, the decision has been made to use the Microsoft HoloLens 2 for the development of the scenario. It boasts numerous features and is widely adopted. For the development of augmented reality content (referred to as holograms in the HoloLens environment), the Unity platform can be utilized. Applications developed with Unity can also run on other augmented reality displays. This allows for example the use of smartphones during the development phase, which often have better waterproof capabilities. Additionally, when a waterproof augmented reality HMD becomes available in the future, the application can be executed on that device as well.\
    Todo: unity webseite link in doku??
  ]
)

#global.paragraph(
  [Moving \ Platform \ Mode],
  [
    The Microsoft HoloLens requires the ability to track its position in six degrees of freedom to display stable holograms.
    X, Y and Z translation as well as roll, pitch and yaw rotation. This is achieved by combining information from two sources: 
    + *Visible light cameras* to track the environment. For example, the physical room in which the HoloLens is used.
    + *Inertial Measurement Unit (IMU)* consisting of an accelerometer, gyroscope, and magnetometer to track motion and orientation relative to Earth.
    
    This requires the environment to be stationary relative to earh. Otherwise tracking errors can occur, resulting in distorted holograms or even loss of tracking. Similar to humans when actual and expected motion don't match, the HoloLens can get "motion sick".

    Microsoft is aware of this issue and introduced the Moving Platform Mode (MPM) in 2022. Enabling MPM signals the HoloLens it can not expect perfect agreement between sensor inputs. Microsoft has tested the MPM on small boats, but according to their website "it is currently scoped to large marine vessels experiencing low-dynamic motion". If the HoloLens can handle the situation in our szenario on smaller sailing vessles, has to be tested.

    Todo: cite https://learn.microsoft.com/en-us/hololens/hololens2-moving-platform
  ]
)

#global.paragraph(
  [Waterproof Case],
  [
    During this thesis, the idea emerged to develop a waterproof case for the HoloLens. Initial discussions were initiated with the Institute for Materials Technology and Plastic Processing.\
    Todo: update stand ende SA
  ]
)

== Ambient Information
#global.paragraph(
  [Wind Sensor],
  [
    A Wind sensor is reqired for the implementation of the scenario to meassure wind speed and direction. They are a common instrument on sail boats and are mostly installed on top of the mast. In @wind_sensor there can be seen a wind vane (left) that visually indicates the direction of the wind. And a wind sensor (right) that meassures the wind speed and diraction and can transmit the information digitally.
    #footnote("https://www.cruisersforum.com/forums/f13/wind-vane-on-front-of-boat-230923.html")

    #figure(
      image("/images/architectur/wind_sensor.jpg", width: 50%),
      caption: "Wind vane (left) and wind sensor (right) mounted on top of the mast of a sail boat"
    ) <wind_sensor>
  ]
)

#global.paragraph(
  [Orientation],
  [
    To display the information correctly, the HoloLens needs to know its position relative to the boat. The wind sensor measures the wind direction as an angle to the boat's longitudinal axis. Therefore, the HoloLens must also be aware of the boat's axis.
    Additionally, the goal is to represent the information relative to the boat, with the center of the hologram at the mast of the boat.

    Todo: 
    - solution. QR Code
    - test to check if works when the boat is moving.
    - maybe zeichnung?
  ]
)

== Communication
#global.paragraph(
  [Gateway],
  [
    To process the data from the sensors and transmit it to the HoloLens, a gateway is required. 
    This allows integrating additional sensors into the application in the future and expanding the AR application.
    To avoid hindering or endangering the user, the transmission from the gateway to the HoloLens should be wireless. The HoloLens is equipped with a Bluetooth or Wi-Fi module, which can be utilized for this purpose.
    The gateway can be a small computer, such as the Raspberry Pi, or a microprocessor like the ESP32 or ESP8266.

    Todo: schon festlegen wie umsetzen?
  ]
)

optionen. schon felstlegen wie umsetzen?

#global.paragraph(
  [Signal K],
  [
    Signal K is an open source data format specifically designed for marine use. In contrast to traditional marine communication standards like NMEA 0183 and NMEA 2000, Signal K utilizes web technologies, promoting interoperability and enabling seamless communication between various marine devices.
    https://signalk.org/overview.html
  ]
)

#global.paragraph(
  [NMEA],
  [
    The National Marine Electronics Association (NMEA) introduced standards for communication among marine electronic devices.
    NEMA2000 is the newest and in the maritim industry widely used standart.
     - alt und (eigetlich) kostenpflichtig??)
    // To make the AR application compatible with existing boat systems, the NMEA 2000 standard should be used between the sensors and the gateway.\
    // Todo: webseite nema2000??
  ]
)

== Conclusion
#global.paragraph(
  [Proof of Concept],
  [
    To evaluate whether the application can be technically implemented, a proof of concept (POC) should be created initially to test the following two points:
    - Verify the functionality of the Moving Platform Mode on a sailboat, ensuring proper environment tracking and correct display of the holograms.
    - Determine whether the application can center itself along the boat's axis using only the cameras or if additional sensors are required.
    To carry out the proof of concept, a sailboat and a HoloLens are needed. Unfortunately, due to winter conditions, a sailboat is not available, preventing the POC from being conducted during this work.
  ]
)

#global.paragraph(
  [Components],
  [
    Based on the current findings, the implementation of the AR application requires the components in @components.
    
    #figure(
      image("/images/architectur/components.png"),
      caption: "Components diagram"
    )<components>
  ]
)

#global.paragraph(
  [Hardware],
  [
    Based on the current findings, the implementation of the AR application requires the following hardware parts listed in @hardware.
    It is also indicated whether the hardware is already available or needs to be procured.

    #figure(
      table(
        columns: (1fr, 1fr, 1fr),
        inset: global.gap,
        align: left,
        [*Component*],[*Hardware*], [*Available*],
        [AR Display], [Microsoft HoloLens 2], [Is provided by OST],
        [AR Display], [Waterproof case for HoloLens], [Must be produced],
        [Wind Sensor], [Wind Sensor], [Must be purchased or produced],
        [Gateway], [ESP8266 or ...?], [Is provided by OST],
        [Gateway], [Waterproof case for Gateway], [Must be purchased or produced],
        [Communication], [Cables], [Must be purchased]
      ),
      caption: "List required hardware"
    )<hardware>
  ]
)
