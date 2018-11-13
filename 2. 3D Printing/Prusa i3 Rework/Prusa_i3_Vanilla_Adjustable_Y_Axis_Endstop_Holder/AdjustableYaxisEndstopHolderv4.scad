$fn = 32;
rotate([90,0,0]) union() {


//The top m8 threaded rod connection
union() {
difference() {

translate([31,12,-2]) rotate([90,0,0]) cylinder(8,6,6);

translate([31,13,-2]) rotate([90,0,0]) cylinder(20,4,4);

translate([33,13,-1]) rotate([90,-30,0]) cube([6,6,20]);

translate([29,-7,-1]) rotate([90,-30,180]) cube([6,6,20]);

translate([33,0,0]) rotate([90,-30,180]) cube([6,6,20]);

translate([28,13,0]) rotate([90,0,0]) cube([6,6,20]);
	    }

translate([26.7,12,.5]) rotate([90,0,0]) cylinder(8,1,1);

translate([35.3,12,.5]) rotate([90,0,0]) cylinder(8,1,1);

	    }

//Connection between two M8 connections
translate([28.5,4,-19]) rotate([0,0,0]) cube([5,8,12]);

//brace
difference() {
translate([-21.55,5.5,-18.5]) rotate([0,0,0]) cube([50,5,13]);
translate([-53.5,4.5,-16]) rotate([0,15,0]) cube([80,10,20]);
	    }


//Lower M8 threaded rod connection
translate([33,0,8]) rotate([0,90,0]) union() 
{
difference() {
translate([31,12,-2]) rotate([90,0,0]) cylinder(8,6,6);

translate([31,13,-2]) rotate([90,0,0]) cylinder(20,4,4);;

translate([33,13,-1]) rotate([90,-30,0]) cube([6,6,20]);

translate([29,-7,.5]) rotate([90,0,180]) cube([6,6,20]);

translate([33,0,0]) rotate([90,-30,180]) cube([6,6,20]);

translate([26,13,-2]) rotate([90,0,0]) cube([6,10,20]);
	    }

translate([35.25,12,.6]) rotate([90,0,0]) cylinder(8,1,1);

	    }




//Horizontal frame mount
translate([-8,12,-2.5]) rotate ([90,0,0]) difference() {

translate([-15,-4,0]) rotate([0,0,0]) cube([50, 8, 8]);

translate([-7,0,-2]) rotate([0,0,0]) cylinder(10,1.75,1.75);

translate([-7,-1.75,-2]) rotate([0,0,0]) cube([30, 3.5, 10]);

translate([23,0,-2]) rotate([0,0,0]) cylinder(10,1.75,1.75);
	    }


//Vertical Frame Mount
translate([-10,12,20]) rotate([90,0,0]) difference() {

translate([-5,-4,0]) rotate([0,0,0]) cube([42, 8, 8]);

translate([0,0,-2]) rotate([0,0,0]) cylinder(10,1.75,1.75);

translate([0,-1.75,-2]) rotate([0,0,0]) cube([30, 3.5, 10]);

translate([30,0,-2]) rotate([0,0,0]) cylinder(10,1.75,1.75);
	    }

translate([0,0,2]) rotate([0,0,0]) difference() {
translate([27,4,27]) rotate([0,90,0]) cube([18, 4, 8]);
translate([31,12,13]) rotate([90,0,0]) cylinder(10,1.75,1.75);

translate([31,12,23]) rotate([90,0,0]) cylinder(10,1.75,1.75);
	    }
translate([29.25,10,23]) rotate([90,90,0]) cube([6, 3.5, 5]);

translate([24.5,4,23]) rotate([0,90,0]) cube([6, 3.5, 5]);

	    }
