#import "/utils/global.typ" as global
= Glossary
== Abbreviations

#for (term, description) in (
  "AR": [Augmented Reality. Further described in the _Research_ chapter],
  "HMD": [Head Mounted Display. Further described in the _Research_ chapter],
  "OST": [Eastern Switzerland University of Applied Sciences _ https://www.ost.ch/ _],
  "SAil ARrrr": [Thesis name. A word formation of _SA_ (Semester Arbeit), _Sail_, _AR_ and the piratey expression _arrr_],
  "YCR": [Yacht Club Rapperswil _ https://www.ycr.ch/ _],
) {
  grid(
    columns: (1fr, 6fr),
    gutter: global.gap,
    [*#term*], description,
  )
}

#v(global.gap)
== Nautical Terms
#for (term, description) in (
  "Bow": [
    The bow is the forward part of the hull of a ship or boat, the point that is usually most forward when the vessel is underway.
    #footnote("https://en.wikipedia.org/wiki/Bow_(watercraft)")
  ],  
  "Jibe": [
    Jibe is a sailing maneuver whereby a sailing vessel reaching downwind turns its stern through the wind. 
    #footnote("https://en.wikipedia.org/wiki/Jibe")
  ],
  "Knot": [
    The knot is a unit of speed equal to one nautical mile per hour, exactly 1.852 km/h. 
    #footnote("https://en.wikipedia.org/wiki/Knot_(unit)")
  ],
  "Nautical Mile":  [
    A nautical mile is a unit of length used in air, marine, and space navigation, and for the definition of territorial waters. Today the international nautical mile is defined as 1,852 metres. 
    #footnote("https://en.wikipedia.org/wiki/Nautical_mile")
  ],
  "Points of Sail": 
  [
    A point of sail is a sailing craft's direction of travel under sail in relation to the true wind direction over the surface. #footnote("https://en.wikipedia.org/wiki/Point_of_sail")

    - _Into the wind_ where a sailing craft is pointed directly upwind in the middle of the no-go zone, where sails cannot generate power.
    - _Close-hauled_ where a craft is sailing, pointed near the no-go zone.
    - _Reaching_, including:
      - _Close reach:_ between close-hauled and a beam reach.
      - _Beam reach:_ the craft has the true wind at a right angle to its direction (on its beam).
      - _Broad reach:_ the true wind is coming from behind, but not directly behind.
    - _Running downwind_ where a craft has the wind coming from directly behind
  ],
  "Port": [
    Port refers to the left side of a watercraft, viewed from stern to bow. #footnote("https://de.wikipedia.org/wiki/Backbord_und_Steuerbord")<boards>
  ],
  "Starboard": [
    Starboard refers to the right side of a watercraft, viewed from stern to bow. @boards
  ],
  "Stern": [
    The stern is the back or aft-most part of a ship or boat.
    #footnote("https://en.wikipedia.org/wiki/Stern")
  ],
  "Tacking": [
    Tacking is a sailing maneuver by which a sailing craft turns its bow toward and through the wind so that the direction from which the wind blows changes from one side of the boat to the other.
    #footnote("https://en.wikipedia.org/wiki/Tacking_(sailing)")
  ],
) {
  grid(
    columns: (1fr, 6fr),
    gutter: global.gap,
    [*#term*], description,
  )
}
