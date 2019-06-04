//Title: Iphone_Optical_Illusion_1
//Coder: Thomas Wesley
//Last Edit: June 3rd, 2019
//Iphone wallpaper consisting a flower structure distorted to create a spiral tiling that causes the mind to infer motion from a still image


//Optional Parameter to make this export a vector file 
//import processing.svg.*;

// Sketch Variable Declarations
float ToRadians = PI / 180.0;
float gAngle = 40.43;
//Spider-Man2 float gAngle = -21.178;
//float gAngle = 210.5;
float rotation = 0;
int qq = 150;
int qqq=0;
float initialRotation = 0.0;
int width, height;
float count2 = 0;
int totalPetals = 25000;
Petal[] petals = new Petal[totalPetals];
float radiusGrowth = 1.00001;
float radius = 1;
float g = 0.0001;
float a = -25;
float b =0;
float c =0;
float d=0;
float x = 0;
float y = 0;
float z = 0;
PImage img;
float t = 0;
float u = 0;
float track =0;
float he=1280;
float wi=720;
int delay=0;
float red;
float green;
float blue;

//Sketch Setup - Sizing and background parameters
void setup(){
//size(400, 400, SVG, "filename.svg");
    size(900, 1600);
    //size(750, 1334);
}
//Sketch Draw - Logic for the image
void draw() {
  //save("Iphone_Optical_Illusion_1_Alpha.png"); 
  scale(2);
  delay=delay+1;
  he=height;
  wi=width;
 
  noStroke();
  strokeWeight(1);
  smooth();
  background(255,233,233);    
  track = track +1;
  translate(450/2,800/2);
  rotation=0;
    for (int i = 0; i < totalPetals; i++) {
        if(i%3==0){
          red=255;
          green=0;
          blue=128;}
        else if(i%2==0){
          red=80;
          green=5;
          blue=140;}
          else{
           red=80;
           green=230;
           blue=130;
          }
        rotation += gAngle;
        radius = g + (.037)*i;
        Petal petal = new Petal(0,0,0,0,red,green,blue,255);
        petal.x = width / 2 + cos(rotation * ToRadians) * radius;
        petal.y = height / 2 + sin(rotation * ToRadians) * radius;
        petal.rotation = rotation * ToRadians;
        petal.scaleVar += ((i)*24.6) / totalPetals;
        petal.render();
        petals[i] = petal;
    }
    translate(-450/2,-800/2);
}
// Sketch Classes and Functions
class Petal{
  float rrr;
  float ggg; 
  float bbb;
  float opopop;
  float rrrr;
  float bbbb;
  float gggg;
  float opopopop;
   color baseColor;
  color detailColor; 
  Petal(float r, float g, float b, float op, float rr, float gg, float bb, float opop){
  rrr= r;
  bbb= b;
  ggg = g;
  opopop = op;
  rrrr= rr;
  bbbb=  bb;
  gggg=gg;
  opopopop = opop;
  baseColor = color(rrr, ggg, bbb, opopop);
  detailColor = color(rrrr, gggg, bbbb, opopopop);
  }
  float x = 0;
  float y = 0;
  float rotation = 0.0;
  float scaleVar = 1;
 
  //color baseColor = color(rrr, ggg, bbb, opopop);
 // color detailColor = color(rrrr, gggg, bbbb, opopopop);
  color trimColor = color(255, 255,255,255);

  
  void render (){
      pushMatrix();
      translate(this.x, this.y);
      fill(this.baseColor);
      rotate(this.rotation);
      scale(this.scaleVar, this.scaleVar);
      //rect(-10, -1, 1, .25);
      ellipse(0, 0, 2, 2);
      fill(this.detailColor);
      ellipse(0, 0, 1.5, 1.5);
      
      fill(this.trimColor);
     // ellipse(0, 0, 1, 1);
      popMatrix();
  }
  
}

float x(float t) {
 return sin(t/10)*300+sin(t/5)*random(49,50); 
}
float y(float t) {
 return cos(t/15) * 300; 
}  



float w(float u) {
 return sin(u/10)*90; 
} 
float z(float u) {
 return cos(u/15) ; 
}
float w1(float u) {
 return sin(u/10)*70; 
}
float z1(float u) {
 return cos(u/10)*30; 
}
float a(float u) {
  return tan(u/5)*50;
}
float b(float u) {
  return tan(u*2)*5;
}
