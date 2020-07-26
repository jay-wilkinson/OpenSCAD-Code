$fn=90;

difference(){
    body();
    cylinder(22,d=5.2,center=true);
    translate([0,0,-5.1]) cylinder(15,d=10.3,center=true);
}

module body(){
cylinder(15,d1=32,d2=20,center=true);
translate([0,0,-10]) cylinder(5,d=32,center=true);
}
