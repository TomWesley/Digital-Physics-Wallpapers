//Title: Iphone Lissajous
//Coder: Thomas Wesley 
//Last Edit September 23rd, 2019
//Iphone wallpaper with unique hexed background and Lissajous Figure parametric equations. 

// Sketch Variable Declarations
int delay = 0;
static int LINE_C = 360;
static int LINE_O = 360;
float size=10;
//Sketch Setup - Sizing and background parameters
void setup() {
  size(760, 1340);
  background(255);
}
//Sketch Draw - Logic for the drawing
void draw() {
  background(0);
  fill(255,0,128,255);
  stroke(80,230,130,255);
  strokeWeight(0.8);
  for(float j = 0; j < height*1.5; j = j +size*1.8){
    for(float i = 0; i < width; i = i +size*1.8){
      pushMatrix();
      if((i+j)%5==0){
        polygon(i, j*.8, size, 2);   
      }
      else{
        polygon(i, j*.8, size*0.8, 6);
      }
      popMatrix();
    }
  }
  translate(width/2,height/2);   
  for(int i=0;i<LINE_C;i++){
    stroke(80,50,140,255);
    fill(255,242,209.205);
    ellipse(lissajous_x(i),lissajous_y(i),1+abs(lissajous_y(i))*.2,1+abs(lissajous_y(i))*.2);
  }
  translate(-width/2,-height/2);
  // save("Iphone_Lissajous_Alpha.png");
}
//The functions for the epicycloid
float lissajous_x(float t) {
 return 220*sin(radians(3*t)+(PI/2));
}  
float lissajous_y(float t) {
 return 400*sin(radians(t));
}  
void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
