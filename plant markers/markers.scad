$fn=90;
/* [Text] */
Custom_Text="Your Text Here"; //20
Preset_Text="Not Dead Yet"; //[Not Dead Yet,DEAD,Plant,No Idea,Not Sure,Still Alive,A Weed,Cheaper Than Therapy,Something Green,Did I Plant This?,Shit Show,Fuck If I Know]

/* [Size] */
Body_Length=100;
Width=12;
Spike_Length=20;
Thickness=2;

/* [Font] */
Font_Face="Liberation Sans:style=Bold Italic";
Font_Size=6; //[4:20]

/* [Quantity] */
Number_Of_Markers=1; //[1:10]

build();

module build(){
    if (Custom_Text=="Your Text Here"){
        marker(Preset_Text);
    }else if (Custom_Text==""){
        marker(Preset_Text);
    }else {
        marker(Custom_Text);
    }
}

module marker(text){
    for (i=[0:1:(Number_Of_Markers-1)]) {
        translate([0,(i*15),0]) linear_extrude(height=Thickness,center=true) polygon([[0,0],[0,Width],[Body_Length,Width],[Body_Length+Spike_Length,Width/2],[Body_Length,0]]);
        translate([Thickness+.9,((i*15)+2),Font_Size-4.51]) linear_extrude(height=1,center=true) text(text=text,font=Font_Face,size=Font_Size);
    }
}
