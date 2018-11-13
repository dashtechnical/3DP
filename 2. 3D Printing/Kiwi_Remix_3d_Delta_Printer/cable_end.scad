$fn=12;

difference() {
  union () {
    minkowski() {
      cube([6, 20, 2], center=true);
      cylinder(r=2, h=2, center=true); 
    }
    translate([2,0,2]) cylinder(r=4.5, h=8, center=true, $fn=18);
  }
  translate([2,0,0]) cylinder(r=.7, h=5, center=true);
  translate([2,0,5]) cylinder(r=2.5, h=5, center=true);
  translate([0,8,0]) cylinder(r=1.5, h=8, center=true); 
  translate([0,-8,0]) cylinder(r=1.5, h=8, center=true); 
}