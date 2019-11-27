//Title: Iphone Flower SVG6
//Coder: Thomas Wesley 
//Last Edit: November 26th, 2019
//Iphone wallpaper with a spiral petal structure

// Sketch Variable Declarations
import processing.svg.*;

float ToRadians = PI / 180.0;
float gAngle = 97.147897084;
float rotation = 0;
float initialRotation = 0.0;
int width, height;
int totalPetals = 25000;
Petal[] petals = new Petal[totalPetals];
float radiusGrowth = 1.00001;
float radius = 1;
float g = 1.0001;

float he=1280;
float wi=720;
int delay=0;
float red;
float green;
float blue;
static final int LINE_C = 120;
//Sketch Setup - Sizing and background parameters
void setup(){
    size(750, 1334);
}
//Sketch Draw - Logic for the drawing
void draw() {
  scale(2);
  delay=delay+1;
  he=height;
  wi=width;
  noStroke();
    strokeWeight(1);
    smooth();
    background(0);
     
  translate(375/2,667/2);
  rotation=0;
    for (int i = 0; i < totalPetals; i++) {
        if(i%3==0){
          red=153;
          green=0;
          blue=0;}
        else if(i%4==0){
          red=0;
          green=0;
          blue=0;}
          else{
           red=255;
           green=215;
           blue=0;
          }
        rotation += gAngle;
        //radius *= radiusGrowth;
        radius = g + (.037)*i;
        Petal petal = new Petal(0,0,0,255,red,green,blue,255);
        petal.x = width / 2 + cos(rotation * ToRadians) * radius;
        petal.y = height / 2 + sin(rotation * ToRadians) * radius;
        petal.rotation = rotation * ToRadians;
        //petal.scaleVar += ((i-500)*10.5) / totalPetals;
        petal.scaleVar += ((i+1500)*12.6) / totalPetals;
        //petal.scaleVar = .5+((i*400)/totalPetals);
        petal.render();
        petals[i] = petal;
    }
    translate(-375/2,-667/2);
    //save("Iphone_Flower_SVG6_Alpha.png");
}
//Class declarations
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
