//=======================================================================================  
//Disable $fn and $fa
$fn=0;
$fa=0.01;

//Use only $fs
//fine
$fs=0.25;

//coarse
//$fs=1;

//rotate axes
X=[1,0,0];
Y=[0,1,0];
Z=[0,0,1];
//=======================================================================================  
module torus(outerRadius, innerRadius)
  {
  r=(outerRadius-innerRadius)/2;
  rotate_extrude() translate([innerRadius+r,0,0]) circle(r);
  }
//=======================================================================================  
ridges=73; //prime :)
module ridge(outerRadius, innerRadius)
  {
  for(i=[1:ridges])
    {
    rotate((i)*(360/ridges),Z)
      translate([17.9,0,8])
        rotate(-90,Z)
          linear_extrude(height = 10)
            polygon(points=[[-0.5,0],[0,1],[0.5,0]], paths=[[0,1,2]]);
    }
  }
//=======================================================================================  
//38 nominal outside
module knob()
  {
  difference()
    {
    union()
      {
      //main body 
      translate([0,0,1]) cylinder(r=18/2,h=10);
      //step down
      translate([0,0,1+10-0.1]) cylinder(r=18/2-2,h=2.1);
        //smoothiness
      translate([0,0,1+10-0.0])
        torus(outerRadius=18/2,innerRadius=18/2-4);
      }
    //Remove for body of switch
//    cylinder(r1=34/2,r2=7/2,h=12.25);
    //Remove hole for shaft
    difference()
      {
      //shaft
      cylinder(r=6/2,h=10); // Travel measured 0.35mm (data sheet says 0.2 to 0.9)
      //cutout flat
      translate([4.5-6/2,-4,0])cube([4,8,14]);
      }
    //Remove fingercup
//    translate([9,0,1+18+3])
//      scale([1,1,0.75])
//        sphere(r=7);
    }
  }
//=======================================================================================  
module encoder()
  {
  //encoder body measures 16.15 across corners
  //12.5 X 13.25 Y
  //measures 6.21 high
  translate([-12.4/2,-13.2/2,0])cube([12.4,13.2,6.5]);
  //bearing sleeve
  cylinder(r=6.9/2,h=11);
  difference()
    {
    //shaft
    cylinder(r=6/2,h=20); // Travel measured 0.35mm (data sheet says 0.2 to 0.9)
    //cutout flat
    translate([4.5-6/2,-4,13])cube([4,8,8]);
    }
  }
//=======================================================================================  
//build,  copies
if(true)
  {
  //build platform for debug
//  %translate([-50,-50,-0.11]) cube([100,100,0.1]);

  difference()
    {
    union()
      {
//      color([0,0.3,0,0.8]) encoder();
      color([0.9,0,0,0.6]) knob();
//      ridge();
      }
    //translate([-40,-40,-1]) rotate(0,Z)cube([80,40,23]);
    }

  }
//=======================================================================================