//Title: Iphone Orbitals Pattern 1
//Coder: Thomas Wesley 
//Last Edit June 19th, 2019
//Regal pattern described by points along sine waves wrapped around a center point, iterated for each row/column in the frame. 

// Sketch Variable Declarations
PFont grand;
float t = 0;
float u = 0;
int x = 0;
int y = 0;
int z = 0;
float speed;
PImage img;
float s=0;
float w;
float time;
float osx;
float osy;
float theta;
float size =0;
float sizer=0;
float rando;
float m;
float phase;
float phasee;
float delay=0;
float flareon=0;
float jolteon=0;
float varry =1;
float varryable =1;
int doors=0;
int check =0;
float setoff=0;
static final int LINE_C =100;
static final int LINE_O =360;
float numb=0;
float er=0;
float umbreon=0;
float gen =0;
float open;
float fire;
float ball;
float checkpoint=0;
float meh;
int diag=0;
float corners=0;
float wave=0;
int lightning = 15;
int ning = 0;
int xx = 0;
int yy = 0;
//Freebie for next task is zz
int zz = 0;
int colorr;
int colorrr;
int colorrrr;
float pick;
float fluct=0;
int spacing;
int radius;
int o=0;
int crunch=0;
int form=int(random(4,10));

//Sketch Setup - Sizing and background parameters
void setup() {
  size(750,1334);
  background(0);  
}

//Sketch Draw - Logic for the drawing
void draw() {
  background(255,242,209,255);
  delay=delay+1;
  
  if(o==120){
    o=o-1;
    crunch = 1;
  }
  else{
    if(o==-120){
     crunch =0; 
     o=o+1;
    }
    if(crunch == 1)
    {
      o = o-1;
    }
    else{
      o =o+1;
    }
  } 
  

  tint(225,143,204,200);
  //image(img,0,0);
  strokeWeight(.5);
  noFill();
  stroke(255,255,255,53);

 strokeWeight(150);
 stroke(0,80,0,0);
 fill(255,200,200,135);


for (int j =-5;j<=(width*1.1);j = j+10){
 

for (int k = 10;k<=height; k = k+10){
  
    translate(j,k-12);
for (int i = 0; i < LINE_O; i = i +1){
      theta = i*(360/LINE_O);
      phase=((PI)/LINE_O);
      wave=7+((j*k)%15);
     noStroke();
   
     if((j*i)%8==0){
   
     colorr=80;
     colorrr=5;
     colorrrr=140;
     }
     else if((i*k)%9==0){
        
          colorr=80;
          colorrr=230;
          colorrrr=130;
     }
     else{
          
          colorr=255;
          colorrr=242;
          colorrrr=209;
     }
     if((j+k)%6==0){
       meh = (35)*sin(theta*(wave))*cos(phase);
     }
     else if((j*k)*4==0){
       meh = (45)*sin(theta*(wave*3))*cos(phase);
     }
     else{
       meh = (30)*sin(theta*(wave/2))*cos(phase);
     }
     osx=((3.3)*meh)*cos(theta);
     osy=((3.1)*meh)*sin(theta);
      strokeWeight(20);
     stroke(colorr,colorrr,colorrrr,1);
     point(osx,osy);
       strokeWeight(16);
     stroke(colorr,colorrr,colorrrr,1);
     point(osx,osy);
     strokeWeight(12);
     stroke(colorr,colorrr,colorrrr,2);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,3);
     strokeWeight(9);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,4);
     strokeWeight(6);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,6);
     strokeWeight(4);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,10);
     strokeWeight(2);
     point(osx,osy);
     stroke(colorr,colorrr,colorrrr,255);
     //stroke(255,173,204,115);
     strokeWeight(1);
     point(osx,osy);    
     
   }
   translate(-j,-k+12);
}
}
//This save function will save the file after the above loops run.
//save("Iphone_Orbitals_Pattern_1_Alpha.png");

}
