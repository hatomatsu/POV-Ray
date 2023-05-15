//-------------------------------------------
#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"
//------------------------------------------



// camera ----------------------------------
camera{ location  <5.0 , 10 ,-15>
        look_at   <5.0 , 0.0 , 0.0>
        right x*image_width/image_height
        angle 75 }

// sun -------------------------------------
light_source{<1500,3000,-2500> color White}

// sky -------------------------------------
plane{ <0,1,0>,1 hollow
       texture{
         pigment{ bozo turbulence 0.92
           color_map{
                 [0.00 rgb<0.05,0.15,0.45>]
                 [0.50 rgb<0.05,0.15,0.45>]
                 [0.70 rgb<1,1,1>        ]
                 [0.85 rgb<0.2,0.2,0.2>  ]
                 [1.00 rgb<0.5,0.5,0.5>  ]
                       } //
           scale<1,1,1.5>*2.5
           translate<0,0,0>
           } // end of pigment
         finish {ambient 1 diffuse 0}
        } // end of texture
       scale 10000}


 #declare Half_Torus = difference {
  torus {    4, 1
  // rotate -90*x  // so we can see it from the top
  }
  box { <-5, -5, -1>, <5, 0, 1> }
   pigment { Green }
  }
  #declare Flip_It_Over = 180*x;
  #declare Torus_Translate = 8;  // twice the major radius


    union {
    object { Half_Torus }
    object { Half_Torus
      // rotate Flip_It_Over
      translate Torus_Translate*x
    }
  }


//------------------------------------- end 
