$fn=90;

build();

module build(){
    linear_extrude(height=10){
        difference(){
            case();
            screw_holes(22,22,1.7);
        }
    }
}
module case(){
    difference(){
        rounded_rect(22,22,3);
        rounded_rect(20,20,3);
    }
    screw_holes(22,22,3);
}
module rounded_rect(a,b,c){
    hull(){
            translate([a,b]) circle(c);
            translate([a,-b]) circle(c);
            translate([-a,b]) circle(c);
            translate([-a,-b]) circle(c);
    }
}
module screw_holes(a,b,c){
    translate([a,b]) circle(c);
    translate([a,-b]) circle(c);
    translate([-a,b]) circle(c);
    translate([-a,-b]) circle(c);
}
