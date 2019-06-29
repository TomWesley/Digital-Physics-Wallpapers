//Title: Iphone Flower Stand 2
//Coder: Thomas Wesley 
//Last Edit June 29th, 2019
//Iphone wallpaper with parametric equation stand on which a flower pattern rests

// Sketch Variable Declarations
float ToRadians = PI / 180.0;
float gAngle = 47.0077640844293;
float rotation = 0.0;
int qq = 150;
int qqq=0;
float initialRotation = 0.0;
int width, height;
float count2 = 0;
//int totalPetals = 1550;
int totalPetals = 2550;
Petal[] petals = new Petal[totalPetals];
float radiusGrowth = 1.00001;
float radius = 1;
float g = 1.00001;
float a = -25;
float b =0;
float c =0;
float d=0;
float x = 0;
float y = 0;
float z = 0;
PImage img;
PImage imgtwo;
float t = 0;
float u = 0;
float track =0;
static final int LINE_C = 320;
//Sketch Setup - Sizing and background parameters
void setup(){
    width=750;
    height=1334;
    size(750, 1334);
    img = loadImage("Tex5Rotate.jpg");
}
//Sketch Draw - Logic for the drawing
void draw() {
    background(120,130,230,115);
    tint(120,130,230,125);
    image(img,0,0);
    noStroke();
    strokeWeight(1);
    smooth();
  translate(width/2,height/2);
    translate(0,-60);
    scale(1.5);
    /*Now you can treat it like a normal coordinate plane with 0,0 at center*/
 
 
    for (int i = 0; i < LINE_C; i = i +1){
      
    strokeWeight(0.5);
    stroke(200,255,200,38);
 
    fill(160,233,163,50);
   triangle(w(i),120+z(i),w1(i),z1(i)+120,0,150+i);
   
    strokeWeight(5);
    
    
 }
  for (int i = 0; i < LINE_C; i = i +1){
      translate(0,10);
      noFill();
 
    stroke(255,174,206,20-(i/20));
    ellipse(0,-22,240+(i/4),240+(i/4));
    translate(0,-10);
  }

     strokeWeight(1);
    translate(0,60);
 
    translate(-width/2,-height/2);
  
    translate(0,-72);
      scale(1);
    for (int i = 0; i < totalPetals; i++) {
        
        rotation += gAngle;
        //radius *= radiusGrowth;
        radius = .95*(g + (.05)*i);
        Petal petal = new Petal(255,255,255,150,255,0,128,135);
        petal.x = width / 2 + cos(rotation * ToRadians) * radius;
        petal.y = height / 2 + sin(rotation * ToRadians) * radius;
        petal.rotation = rotation * ToRadians;
        //petal.scale += (i * 2) / totalPetals;
        petal.scaleVar=2;
        petal.render();
        petals[i] = petal;
    }
     translate(0,72);
    saveFrame("Export/IceCreamFlower_########.png");
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
  opopopop = op;
  baseColor = color(rrr, ggg, bbb, opopop);
  detailColor = color(rrrr, gggg, bbbb, opopopop);
  }
  float x = 0.0;
  float y = 0.0;
  float rotation = 0.0;
  float scaleVar = 1;
 
  //color baseColor = color(rrr, ggg, bbb, opopop);
 // color detailColor = color(rrrr, gggg, bbbb, opopopop);
  color trimColor = color(255, 255, 255,190);

  
  void render (){
      pushMatrix();
      translate(this.x, this.y);
      fill(this.baseColor);
      rotate(this.rotation);
      scale(this.scaleVar, this.scaleVar);
      rect(-10, -1, 20, 2);
      ellipse(0, 0, 10, 10);
      fill(this.detailColor);
      ellipse(0, 0, 8, 8);
      
      fill(this.trimColor);
      ellipse(0, 0, 5, 5);
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
