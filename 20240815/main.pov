//Files with predefined colors and textures
#include "colors.inc"
#include "glass.inc"
#include "golds.inc"
#include "metals.inc"
#include "stones.inc"
#include "woods.inc"
#include "textures.inc"

//Place the camera
camera {
  sky <0,0,1>           //Don't change this
  direction <-1,0,0>    //Don't change this  
  right x*image_width/image_height      //Don't change this
  location <30,0, 1> //Camera location
  look_at <0.5,0, 1>     //Where camera is pointing
  angle 15     //Angle of the view--increase to see more, decrease to see less
  
}

//Ambient light to "brighten up" darker pictures
global_settings { ambient_light White }

//Place a light--you can have more than one!
light_source {
  < 50, -30, 190>   //Change this if you want to put the light at a different point
  color White*1       //Multiplying by 2 doubles the brightness
}

//Set a background color
background { color White }

//Create a "floor"
plane {
  <0,0,1>,  -1            //This represents the plane 0x+0y+z=0
  // pigment {
  //     checker color White, color Blue
  //   }
  texture { T_Silver_3A }       //The texture comes from the file "metals.inc"
}

plane {
  <1,0,0>,  -1            //This represents the plane 0x+0y+z=0
  texture {
    Cork
    scale 2
    }
  // texture { T_Silver_3A }       //The texture comes from the file "metals.inc"
}

//Sphere with specified center point and radius
//The texture comes from the file "stones.inc"
// sphere { <0,0,1.5>, 1 texture {T_Wood17} }



// Original 

// // green box
// box {
//     < -0.04, -3, 0>,  // Near lower left corner
//     < -1, 3,  3>   // Far upper right corner
//     pigment { DarkGreen }
//     finish {diffuse 1.0}
// }



// merge {
// //wood box
// box {
//     < 0, -3.1, -0.1>,  // Near lower left corner
//     < -1, 3.1,  3.1>   // Far upper right corner
//     texture {
//         T_Wood25
//         scale 2
//         rotate <90, 0, 0>
//     }
// }

//   //crop box
//   box {
//       < 0, -3, 0>,  // Near lower left corner
//       < -0.5, 3,  3>   // Far upper right corner
//   }
// }

// Original Ends 

union{
  // green box
  box {
      < -0.04, -3, 0>,  // Near lower left corner
      < -1, 3,  3>   // Far upper right corner
      // pigment { DarkGreen }
      pigment { color rgb <51, 97, 71>/255 }
      finish {
        phong 1.0
      }
  }

  merge {
  //wood box
  box {
      < 0, -3.1, -0.1>,  // Near lower left corner
      < -1, 3.1,  3.1>   // Far upper right corner
      texture {
          T_Wood25
          scale 2
          rotate <90, 0, 0>
      }
  }

    //crop box
    box {
        < 0, -3, 0>,  // Near lower left corner
        < -0.5, 3,  3>   // Far upper right corner
    }
  }

  translate < 0, 0, -0.5>
  scale 1.15
}

// sphere {
//   <0,0,0> , 0.01
//   pigment { Red }
// }

//  torus {
//     2.5 ,1              // major and minor radius
//     rotate < 135, 0, 90 >      // so we can see it from the top
//     pigment { Green }
//     // texture {Glass}
//     finish {reflection 0.05}
//     scale 0.2
//     translate < 0.5, 0, 0.5 >
// }

//    torus {
//     2.5 ,1              // major and minor radius
//     rotate < 135, 0, 90 >      // so we can see it from the top
//     pigment { Green }
//     scale 0.3
//     translate < 2, -0.8, 0.5 >
//   }


// box {
//     < 0, 0, 0>,  // Near lower left corner
//     < 1, 1, 1>   // Far upper right corner
//     pigment { DarkGreen }
//     translate <0, 0, 2>
// }



// plane {
//   <0,1,0>, 0            //This represents the plane 0x+0y+z=0
//   pigment { Green }
  
// }
