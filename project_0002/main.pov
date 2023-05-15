#include "colors.inc"

camera {
   location <0,0,-10>
   look_at <0,0,0>
}

light_source {
   <10, 10, -10> // <x, y, z>
   color <1.0, 1.0,  1.0> // <red, green, blue>
   area_light <5, 0, 0>, <0, 0, 5>, 5, 5 // <x, y, z>, <x, y, z>, size 1, size 2
   adaptive 1
   jitter
   
}


background {
   White
}
// sky_sphere {
//    pigment {
//       gradient y
//       color_map {
//          [0.0 color rgb <1,1,1>]  // white
//          [0.5 color rgb <0.5,0.7,1>]  // sky blue
//          [1.0 color rgb <0,0,0.7>]  // deep blue
//       }
//    }
// }

sphere {
   <0,0,0>, 2
   pigment { White }
}

sphere {
   <4,-2,0>, 1
   pigment { Blue }
}

sphere {
   <-4,-2,0>, 1
   pigment { Blue }
}