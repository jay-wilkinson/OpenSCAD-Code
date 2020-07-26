$fn=90;

module case(){
    difference(){
        cube([50,50,10],center=true);
        cube([48,48,10.1],center=true);
    }
}
module screw_hole(){
    difference(){
        cylinder(h=10,d=6,center=true);
        cylinder(h=10.1,d=3.4,center=true);
    }
}
module build(){
    case();
    translate([22,22,0]) screw_hole();
    translate([-22,22,0]) screw_hole();
    translate([22,-22,0]) screw_hole();
    translate([-22,-22,0]) screw_hole();
}

build();