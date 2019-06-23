//Title: Iphone Flower Stand
//Coder: Thomas Wesley 
//Last Edit June 23rd, 2019
//Iphone wallpaper with parametric equation stand on which a flower pattern rests

// Sketch Variable Declarations
float ToRadians = PI / 180.0;
float gAngle = 98.5077640844293;
float rotation = 0.0;
int qq = 150;
int qqq=0;
float initialRotation = 0.0;
int width, height;
float count2 = 0;
int totalPetals = 1550;
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
float t = 0;
float u = 0;
float track =0;
static final int LINE_C = 120;
//Sketch Setup - Sizing and background parameters
void setup(){
    width=750;
    height=1334;
    size(750, 1334);
    img = loadImage("Tex5Rotate.jpg");
}
//Sketch Draw - Logic for the drawing
void draw() {
    background(100,20-(.95*x),40);
    tint(100,20-(.55*x),40,175+(.5*x));
    image(img,0,0);
    noStroke();
    strokeWeight(1);
    smooth();
     track = track +1;
     if(qq==-400){
       qq = 200;
     }
     qq= qq+1;
    if(y<45){
    if(x>75){
    y = 50;
         }
    x = x+1 ; 
    }
    else{
   if(x<1){y = 0;
  }
  x = x-1;
  }
    translate(0,-120);
    for (int i = 0; i < totalPetals; i++) {
        
        rotation += gAngle;
        //radius *= radiusGrowth;
        radius = 2*(g + (.05)*i);
        Petal petal = new Petal(0,0,0,150,0,0,0,135);
        petal.x = width / 2 + cos(rotation * ToRadians) * radius;
        petal.y = height / 2 + sin(rotation * ToRadians) * radius;
        petal.rotation = rotation * ToRadians;
       //petal.scale += (i * 2) / totalPetals;
       petal.scaleVar=2;
        petal.render();
        petals[i] = petal;
    }
    translate(0,120);
    
      if (g<25)
    {
      if(count2<1){
      g = g+.2;
      a=a+.5*g;
      }
      else{
        g = g-.3;
        count2 = count2-.3;
      }
    }
    else{
     count2 = 25; 
     a = a-5;
     g= g-.5;
    }
    translate(width/2,height/2);
    scale(2);
    translate(0,-60);
   
  
    for (int i = 0; i < LINE_C; i = i +1){
    strokeWeight(0.5);
    stroke(255,235,102,18);
    fill(0,0,0,40);
    triangle(w(i),120+z(i),w1(i),z1(i)+120,0,150+i);
  
    stroke(0,i/5,0,50);
    fill(0,i/5,0,50);
    strokeWeight(3);
   
    if(i%2==0){
    noStroke();
    fill(1,1,1+i/20,2);
    ellipse(int(random(-200,200)),int(random(-300,300)),170,170);
    ellipse(int(random(-200,200)),int(random(-300,300)),170,170);}
    strokeWeight(1);
    }
 
    translate(0,50);
    translate(0,-50);
    translate(-width/2,-height/2);
    noFill();
    strokeWeight(5);
    stroke(255,255,102,1);
    ellipse(width/2,height/2,225+g,225+g);
    stroke(255,255,102,5);
    ellipse(width/2,height/2,220+g,220+g);
    stroke(255,255,102,9);
    ellipse(width/2,height/2,215+g,215+g);
    stroke(255,255,102,12);
    ellipse(width/2,height/2,210+g,210+g);
    stroke(255,255,102,15);
    ellipse(width/2,height/2,205+g,205+g);
    stroke(255,255,102,17);
    ellipse(width/2,height/2,200+g,200+g);
    stroke(255,255,102,19);
    ellipse(width/2,height/2,195+g,195+g);
    stroke(255,255,102,21);
    ellipse(width/2,height/2,190+g,190+g);
    stroke(255,255,102,22);
    //fill(5,5,5,60);
    ellipse(width/2,height/2,185+g,185+g);
    translate(0,60);
 saveFrame("Export/MaroonFlower_########.png");
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
//Function Declarations
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
