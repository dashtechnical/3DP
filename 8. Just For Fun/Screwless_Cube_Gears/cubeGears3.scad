// Cube gears without screws

use <MCAD/involute_gears.scad>
include <pins.scad>

//gear1();
//gear2();
//center();
pin1();translate([12,0,0])pin2();
//twogears();center();// render sub-assembly
//assembly();

cs=50;// cube size (side length)
rf1=0.72*cs;// distance from center of cube to cut corner faces
cp=1/3;// percentage of rf1 for the center block
ph=8;// pin height
pc=3;// pin height clearance on gears
pd=7;// pin shaft diameter
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
	rotate(a=[0,90-theta,90])rotate([0,0,120*$t])translate([0,0,rf1*cp])gear1();
	rotate(a=[0,90-theta,0])rotate([0,0,-2*120*$t])translate([0,0,rf2*cp])gear2();
}

L1=rf1*(1-cp)-pc+ph;
L2=rf1-rf2*cp-pc+ph;

module halfpin(){
difference(){
	pinpeg(h=L2,r=pd/2);
	translate([0,rf1/2,0])cube(size=rf1,center=true);
}}

module pin1(){
union(){
	translate([0,L2-L1,0])halfpin();
	rotate([90,0,0])translate([0,0,-0.1])
		linear_extrude(height=L1-L2+0.2)projection(cut=true)rotate([-90,0,0])halfpin();
	mirror([0,1,0])halfpin();
}}

module pin2(){
pinpeg(h=L2,r=pd/2);
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
	translate([0,0,-(rf1+rf2)*cp/2-.01])pinhole(h=ph,r=pd/2,tight=true);
	rotate([180,0,0])translate([0,0,-(rf1+rf2)*cp/2-.01])pinhole(h=ph,r=pd/2,tight=true);
}}
//pinhole(h=10, r=4, lh=4, lt=2, t=0.3, tight=true)

module gear1(){
render()
difference(){
union(){
	translate([0,0,cs*sqrt(3)*3/8-rf1*cp])rotate([0,theta-90,0])rotate([0,0,45])
		cube(size=cs/4, center=true);
	intersection(){
		translate([0,0,-rf1*cp])rotate([0,theta-90,0])rotate([0,0,45])
			cube(size=cs, center=true);		
		translate([0,0,rf1*(1-cp)])rotate([180,0,phi1])
		bevel_gear (number_of_teeth=n1,
			outside_circular_pitch=pitch,
			cone_distance=dc,
			face_width=dc*(1-cp),
			bore_diameter=0,
			backlash=b,
			finish=0);	
	}
}
pinhole(h=rf1*(1-cp)-pc,r=pd/2,tight=false);
}}

module gear2(){
render()
intersection(){
	translate([0,0,-rf2*cp])rotate([0,theta-90,0])rotate([0,0,45])cube(size=cs, center=true);
	difference(){
		translate([0,0,rf2*(1-cp)])rotate([180,0,phi2])
		bevel_gear (number_of_teeth=n2,
			outside_circular_pitch=pitch,
			cone_distance=dc,
			face_width=dc*(1-cp),
			bore_diameter=0,
			backlash=b,
			finish=0);
		pinhole(h=rf1-rf2*cp-pc,r=pd/2,tight=false);
	}
}}