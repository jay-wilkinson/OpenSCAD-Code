$fn=90;
defcon();

module defcon(){
    translate([0,7,0]) face();
    translate([0,-6.5,0]) rotate(a=29, v=([0,0,1])) bone();
    translate([0,-6.5,0]) rotate(a=-29, v=([0,0,1])) bone();
}
module bone(){
    cube([40,4,2],center=true);
    translate([20,2,0]) cylinder(h=2,d=5.5,center=true);
    translate([-20,2,0]) cylinder(h=2,d=5.5,center=true);
    translate([20,-2,0]) cylinder(h=2,d=5.5,center=true);
    translate([-20,-2,0]) cylinder(h=2,d=5.5,center=true);
}
module face(){
    difference(){
        cylinder(h=2,d=22.5,center=true);
        eyes();
        smile();
    }
    translate([0,0,0]) headphones();
}
module eyes(){
    translate([4,3.25,0]) cylinder(h=2.1,d=4,center=true);
    translate([-4,3.25,0]) cylinder(h=2.1,d=4,center=true);
}
module smile(){
    hull(){
        translate([6.5,-1.5,0]) cylinder(h=2.1,d=2,center=true);
        translate([8.5,-1.5,0]) cylinder(h=2.1,d=2,center=true);
    }
    hull(){
        translate([-6.5,-1.5,0]) cylinder(h=2.1,d=2,center=true);
        translate([-8.5,-1.5,0]) cylinder(h=2.1,d=2,center=true);
    }
    difference(){
        cylinder(h=2.1,d=17,center=true);
        cylinder(h=2.2,d=14,center=true);
        translate([0,4.25,0]) cube([20,10,2.2],center=true);
    }
}
module headphones(){
    translate([-9.5,2,0]) difference(){
        cylinder(h=2,d=8,center=true);
        translate([2,0,0]) cube([4,8,2.1],center=true);
    }
    translate([9.5,2,0]) difference(){
        cylinder(h=2,d=8,center=true);
        translate([-2,0,0]) cube([4,8,2.1],center=true);
    }
    translate([0,2,0]) difference(){
        cylinder(h=2,d=22.5,center=true);
        cylinder(h=2.1,d=21.5,center=true);
        translate([0,-5,0]) cube([22.5,13,2.1],center=true);
    }
}