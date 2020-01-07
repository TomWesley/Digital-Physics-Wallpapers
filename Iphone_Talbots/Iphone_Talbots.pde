//Title: Iphone Talbots
//Coder: Thomas Wesley 
//Last Edit: January 6th, 2020
//Iphone wallpaper with unique polygon background and Talbots Curve parametric equations. 

// Sketch Variable Declarations
int delay = 0;
static int LINE_C = 360;
//static int LINE_O = 360;
float size=30;
//Sketch Setup - Sizing and background parameters

//Lightning Background Variabls
float a=500;
float b=200;
float c=sqrt(((a*a)-(b*b)));
float e=c/a;
void setup() {
  size(760, 1334);
  background(0);
}
//Sketch Draw - Logic for the drawing
void draw() {
  float step=.05;
  float grid=2;
  background(0);
  delay=delay+1;
  for(float j=0;j<=width+grid;j=j+grid){
    for(float k=0;k<=height+grid;k=k+grid){
      fill(225+(j+k)*30/(1334+width),150-(j+k)*150/(1334+width),250-(j+k)*122/(1334+width),255);
      stroke(0);
      strokeWeight(0.5);
      polygon(j,k,grid/1.4,2+(j+k*k)%15);
    }
  }

  
  strokeWeight(1);
  translate(width/2,height/2);   
  rotate(PI/2);
  for(float i=0;i<=LINE_C;i=i+step){
   stroke(0,255);
   noStroke();
   fill(0,255);
  
    
    //fill(80,5,140,255);
    ellipse(talbots_x(i),talbots_y(i),size*1.1,size*1.1);
   // ellipse(-lituus_x(i),-lituus_y(i),size-i/30,size-i/50);
    
  }
    for(float i=0;i<=LINE_C;i=i+step){
   //fill(80,230,130,255);
   noStroke();
   fill(255,255);
    ellipse(talbots_x(i),talbots_y(i),size*1,size*1);
    stroke(0);
    line(talbots_x(i)-size,talbots_y(i)-size,talbots_x(i)+size,talbots_y(i)+size);
      }
  //polygon(0,0,100,9);
  translate(-width/2,-height/2);
  save("Iphone_Talbots_Alpha.png");
}
//The functions for the epicycloid
float talbots_x(float t) {
 float inter=a*cos(t)*cos(t)*cos(t)+(2*a*a-b*b)*cos(t)*sin(t)*sin(t)/a;
 return inter;
}  
float talbots_y(float t) {
  float inter=b*sin(t)*sin(t)*sin(t)+(2*b*b-a*a)*cos(t)*cos(t)*sin(t)/b;
 return inter;
}  
void polygon(float x, float y, float radius, float npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
