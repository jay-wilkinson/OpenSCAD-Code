$fn=90;

difference(){
    body();
    cylinder(12,d=5.2,center=true);
    translate([0,0,-4]) #cylinder(5,d=10.3,center=true);
}

module body(){
cylinder(8,d1=32,d2=16,center=true);
translate([0,0,-5]) cylinder(2,d=32,center=true);
}
