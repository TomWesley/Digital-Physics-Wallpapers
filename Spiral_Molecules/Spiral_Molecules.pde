//Title: Spiral Molecules
//Coder: Thomas Wesley
//Last Edit: June 1st, 2019
//Iphone wallpaper consisting a flower structure distorted to create a depiction of molecules forming a spiral structure


//Optional Parameter to make this export a vector file 
//import processing.svg.*;

// Sketch Variable Declarations
float ToRadians = PI / 180.0;
float gAngle = 13.569878;
float rotation = 0;
float initialRotation = 0.0;
int width, height;
int totalPetals = 15000;
Petal[] petals = new Petal[totalPetals];
float radius = 1;
float g = 0.0001;
float red;
float green;
float blue;
float he;
float wi;

//Sketch Setup - Sizing and background parameters
void setup(){
//Optional for Vector file export size(400, 400, SVG, "filename.svg");
    size(750, 1334); //Optimized for iPhones 6,7,8
    background(0);
}

//Sketch Draw - Logic for the image
void draw() {
  //save("Spiral_Molecule.png"); 
  scale(2);
  he=height;
  wi=width;

    noStroke();
    strokeWeight(1);
    smooth();
    
  translate(375/2,667/2);
  rotation=0;
    for (int i = 0; i < totalPetals; i++) {
   //Color control - Use the modulus  operator to rotate between the different colors in the scheme
        if(i%3==0){
          red=80;
          green=5;
          blue=140;}
        else if(i%2==0){
          red=80;
          green=230;
          blue=130;}
          else{
           red=255;
           green=242;
           blue=209;
          }
        rotation += gAngle*(i%11); 
        radius = g + (.061)*(i); 
        Petal petal = new Petal(0,0,0,255,red,green,blue,255);
        petal.x = width / 2 + cos(rotation * ToRadians) * radius;
        petal.y = height / 2 + sin(rotation * ToRadians) * radius;
        petal.rotation = rotation * ToRadians;     
        petal.scaleVar += ((i)*20.367) / totalPetals;
        petal.render();
        petals[i] = petal;
    }
    translate(-375/2,-667/2);
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
      //ellipse(0, 0, 1, 1);
      popMatrix();
  }  
}
