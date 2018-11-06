// Cube gears without screws

use <MCAD/involute_gears.scad>
include <downloads/pins.scad>

//gear1();
//gear2();
center();
//twogears();center();// render sub-assembly
//assembly();

cs=50;// cube size (side length)
rf1=0.72*cs;// distance from center of cube to cut corner faces
cp=1/3;// percentage of rf1 for the center block
ph=7;// pin height
pinshaft_diameter=8;
pinhole_tolerance=0.1;// reduced tolerance for less play
$fs=0.5;// adjust number of faces in holes
b=0.5;// backlash
s=0.01;// slit width

n1=18;// number of teeth on gear1
n2=9;// number of teeth on gear2
// Run gearopt.m with inputs of n1 and n2 above, copy outputs r1 and r2 below.
r1=0.7493;
r2=0.3746;

// -------------- Don't edit below here unless you know what you're doing.
dc=rf1/sqrt(1-pow(r1,2));
theta=asin(1/sqrt(3));
pitch=360*r1*dc/n1;
rf2=sqrt(pow(dc,2)-pow(r2*dc,2));
phi1=90/n1;
phi2=90/n2;

module assembly(){
	center();
	twogears();
	rotate([0,0,180])twogears();
	rotate([180,0,90])twogears();
	rotate([180,0,-90])twogears();
}

module twogears(){
	rotate(a=[0,90-theta,0])rotate([0,0,120*$t])translate([0,0,-rf1])gear1();
	rotate(a=[0,90-theta,90])rotate([0,0,-2*120*$t])translate([0,0,-rf1])gear2();
}

module center(){
difference(){
	intersection(){
		rotate(a=[-90-theta,0,0])box();
		rotate(a=[-90-theta,0,180])box();
		rotate(a=[90-theta,0,90])box();
		rotate(a=[90-theta,0,-90])box();
		rotate([0,0,45])cube(size=rf1,center=true);
	}
cube(size=[dc,s,rf1*cp*2.5],center=true);
rotate([0,0,90])cube(size=[dc,s,rf1*cp*2.5],center=true);
}}

module box(){
translate([0,0,(rf2-rf1)*cp/2])difference(){
	cube(size=[dc,dc,(rf1+rf2)*cp],center=true);
	translate([0,0,-(rf1+rf2)*cp/2-.01])pinloophole(ph);
	rotate([180,0,0])translate([0,0,-(rf1+rf2)*cp/2-.01])pinloophole(ph);
}}

module gear1(){
render()
difference(){
intersection(){
	translate([0,0,rf1])rotate([0,theta-90,0])rotate([0,0,45])cube(size=cs, center=true);
	union(){
		rotate([0,0,phi1])
		bevel_gear (number_of_teeth=n1,
			outside_circular_pitch=pitch,
			cone_distance=dc,
			face_width=dc*(1-cp),
			bore_diameter=0,
			backlash=b,
			finish=0);
		translate([0,0,rf1*(1-cp)])pinshaft(ph);
	}
}
translate([0,0,1])cylinder(r=pinshaft_diameter/2-1,h=rf1*(1-cp)-2);
}}

module gear2(){
render()
difference(){
intersection(){
	translate([0,0,rf1])rotate([0,theta-90,0])rotate([0,0,45])cube(size=cs, center=true);
	translate([0,0,rf1])cube(size=2*rf1, center=true);
	union(){
		rotate([0,0,-phi2])translate([0,0,rf1-rf2])
		bevel_gear (number_of_teeth=n2,
			outside_circular_pitch=pitch,
			cone_distance=dc,
			face_width=dc*(1-cp),
			bore_diameter=0,
			backlash=b,
			finish=0);
		translate([0,0,rf1-rf2*cp])pinshaft(ph);
	}
}
translate([0,0,1])cylinder(r=pinshaft_diameter/2-1,h=rf1-rf2*cp-2);
}}