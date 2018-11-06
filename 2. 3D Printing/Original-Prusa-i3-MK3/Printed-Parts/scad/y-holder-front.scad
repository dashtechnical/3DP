// PRUSA iteration4
// Y holder front
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module ziptie_round_edge()
{
    difference()
    {
        translate([0,0,0]) rotate([90,0,0]) cylinder( h=3, r=4, $fn=30 );  
        translate([0,1,0]) rotate([90,0,0]) cylinder( h=5, r=2, $fn=30 );  
        translate([-10,-4,0]) cube([20,5,5]);
        translate([-20,-4,-13]) cube([20,5,20]);
    }
}


module part()    
{

    difference()
    {
        union()
        {
            // body block
            translate([-13,0,0]) cube([26,10,12]);
            translate([-4,0,-1.5]) cube([8,10,2]);
        }

        // y-axis cut
        translate([0,11,10.5]) rotate([90,0,0]) cylinder( h=14, r=4, $fn=30 );
        translate([0,11,10.5]) rotate([90,0,0]) cylinder( h=2, r1=4.5, r2=4, $fn=30 );
        translate([0,1,10.5]) rotate([90,0,0]) cylinder( h=2, r1=4, r2=4.5, $fn=30 );
        translate([-7,-1,14.5]) rotate([0,45,0]) cube([10,20,10]);
        translate([0,11,10.5]) rotate([90,0,0]) cylinder( h=1.4, r1=5, r2=4, $fn=30 );

        // screw holes
        translate([-5.5,9,3.5]) rotate([90,0,0]) cylinder( h=20, r=1.75, $fn=30 );
        translate([5.5,9,3.5]) rotate([90,0,0]) cylinder( h=20, r=1.75, $fn=30 );
        translate([-5.5,1,3.5]) rotate([90,0,0]) cylinder( h=2, r1=1.75, r2=2.6, $fn=30 );
        translate([5.5,1,3.5]) rotate([90,0,0]) cylinder( h=2, r1=1.75, r2=2.6, $fn=30 );

        // ziptie
        translate([7.8,8,9]) ziptie_round_edge();
        translate([-7.8,5,9]) rotate([0,0,180]) ziptie_round_edge();
        translate([-8.1,5,5]) cube([16.2,3,2]);
        translate([0.8,5,24.5]) rotate([0,60,0]) cube([20,3,2]);
        translate([-1.8,5,26.5]) rotate([0,120,0]) cube([20,3,2]);

        // nuts
        translate([-8.2,2,-3.4]) cube([5.6,2.1,10]);
        translate([2.8,2,-3.4]) cube([5.6,2.1,10]);

        // upper corners
        translate([4,-1,20]) rotate([0,60,0]) cube([20,30,20]);
        translate([-21.2,-1,30]) rotate([0,120,0]) cube([20,30,20]);
        translate([-5,-6,-2]) cube([10,10,2]);
        translate([-15,10,-6.5]) rotate([45,0,0]) cube([30,5,5]);

    }
}

rotate([-90,0,0]) part();


