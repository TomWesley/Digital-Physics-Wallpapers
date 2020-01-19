//Title: Iphone Flower SVG7
//Coder: Thomas Wesley 
//Last Edit: January 19th, 2020
//Iphone wallpaper with playful color scheme and spirals balanced with cubic structures.

// Sketch Variable Declarations
float ToRadians = PI / 180.0;
float gAngle = 35.587093276242565;
float rotation = 0;
int qq = 150;
int qqq=0;
float initialRotation = 0.0;
int width, height;
float count2 = 0;
int totalPetals = 905000;
Petal[] petals = new Petal[totalPetals];
float radiusGrowth = 1.00001;
float radius = 1;
float g = 0.0001;

float he=1280;
float wi=720;
int delay=0;
float red;
float green;
float blue;
static final int LINE_C = 120;
void setup(){
    size(750, 1334);
}

void draw() {
  scale(1);
  delay=delay+1;
  he=height;
  wi=width;
  noStroke();
    strokeWeight(1);
    smooth();
    background(0);
     
  translate(375/1,667/1);
  rotation=0;
    for (int i = 0; i < totalPetals; i++) {
        if(i%3==0){
          red=187;
          green=226;
          blue=240;}
        else if(i%4==0){
          red=255;
          green=248;
          blue=130;}
          else{
           red=240;
           green=187;
           blue=230;
          }
        rotation += gAngle+.05*pow(i,.4333);
        //rotation=gAngle+3.5*pow(i,1.000001);
        //radius *= radiusGrowth;
        radius = g + (7)*pow(i,.3333);
        Petal petal = new Petal(red,green,blue,255,red,green,blue,255);
        petal.x = width / 2 + cos(rotation * ToRadians) * radius;
        petal.y = height / 2 + sin(rotation * ToRadians) * radius;
        petal.rotation = rotation * ToRadians;
        //petal.scaleVar += ((i-500)*10.5) / totalPetals;
        petal.scaleVar += ((i)) / totalPetals;
        //petal.scaleVar = .5+((i*400)/totalPetals);
        petal.render();
        petals[i] = petal;
    }
    translate(-375/1,-667/1);
    //save("Iphone_Flower_SVG7_Alpha.png");
}

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
      //ellipse(0, 0, 2, 2);
      ellipse(0, 0, 1, 1);
      fill(this.detailColor);
     // ellipse(0, 0, 1.5, 1.5);
     ellipse(0, 0, 1.75, 1.75);
      
      fill(this.trimColor);
     // ellipse(0, 0, 1, 1);
      popMatrix();
  }
  
}
