module marco()
    {
        difference()
        {
            union()
            {
                translate([0,0,-1/2]) cube([20,36,1],center=true);
                translate([0,0,-5/2]) cube([14.5,25.5,5],center=true);
            }
            translate([0,0,-5/2]) cube([12.5,23.5,5],center=true);
            translate([0,-28/2,-1]) cylinder(d=1,h=1);
            translate([0,28/2,-1]) cylinder(d=1,h=1);
            translate([0,36/2,-7/2]) cube([5,36/2,5],center=true);
        }
    }
    
marco();
    