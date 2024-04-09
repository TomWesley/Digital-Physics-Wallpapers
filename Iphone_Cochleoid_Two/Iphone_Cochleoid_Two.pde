//Title: Iphone Cochleoid Two
//Coder: Thomas Wesley 
//Last Edit April 8th 28th, 2024
//Iphone wallpaper with a tiling background and abstract Cochleoid function composed of ellipses. 

// Sketch Variable Declarations
int w = 120;
float i;
int z=0;
float o=0;
float a = 0;
float shade = 0 ;
float b = 0;
float t = 0;
float u = 0;
int keepoff=0;
int loc = -430;
int ation = -10;
int chan=-460;
int ging=-60;
int an = 10;
int one = 70;
int delay = 0;
int here=0;
int tri = 0;
int fan = 0;
int fanm=0;
int para=0;
float square=10;
static int LINE_C = 50;
static int LINE_O = 100;

//Sketch Setup - Sizing and background parameters
void setup() {
  size(750, 1334); //Sized for Iphone
  background(0);
}
//Sketch Draw - Logic for the drawing
void draw() {
  background(255,0,128,255);
  delay=800;
  strokeWeight(1);
  stroke(255);
  //rotate so the straight lines will be angled
  rotate(PI/4);
  square=3.5;
  
 for(int h = -height; h < height*2; h = h +20){
   
  stroke(255);
   line(-width,h,width*2,h);
   
 }
  stroke(255);
  for(int w = -width; w < width*2; w = w +20){
   line(w,-height,w,height*2);
 }
 stroke(0);
 noStroke();
 fill(2,30,10,255);
  for(int h = -height; h < height*2; h = h +20){  
   for(int w = -width; w < width*2; w = w +20){
    translate(w,h);
    //Describes the shape of the instersections of lines, it is clasically called the Asteroid function
    beginShape();
    curveVertex(0,-square);   curveVertex(0,-square);
    curveVertex(cochxx((PI*1.2)/2,square), cochyy((PI*1.2)/2,square)); 
    curveVertex(cochxx((PI*1.4)/2,square), cochyy((PI*1.4)/2,square)); 
    curveVertex(cochxx((PI*1.6)/2,square), cochyy((PI*1.6)/2,square)); 
    curveVertex(cochxx((PI*1.8)/2,square), cochyy((PI*1.8)/2,square)); 
    curveVertex(cochxx((PI*2)/2,square), cochyy((PI*2)/2,square)); 
    curveVertex(cochxx((PI*2.2)/2,square), cochyy((PI*2.2)/2,square));
    curveVertex(cochxx((PI*2.4)/2,square), cochyy((PI*2.4)/2,square));
    curveVertex(cochxx((PI*2.6)/2,square), cochyy((PI*2.6)/2,square));
    curveVertex(cochxx((PI*2.8)/2,square), cochyy((PI*2.8)/2,square));
    curveVertex(cochxx((PI*3)/2,square), cochyy((PI*3)/2,square)); 
    curveVertex(cochxx((PI*3.2)/2,square), cochyy((PI*3.2)/2,square));
    curveVertex(cochxx((PI*3.4)/2,square), cochyy((PI*3.4)/2,square));
    curveVertex(cochxx((PI*3.6)/2,square), cochyy((PI*3.6)/2,square));
    curveVertex(cochxx((PI*3.8)/2,square), cochyy((PI*3.8)/2,square));
    curveVertex(cochxx((PI*4)/2,square), cochyy((PI*4)/2,square)); 
    curveVertex(cochxx((PI*0.2)/2,square), cochyy((PI*0.2)/2,square));
    curveVertex(cochxx((PI*0.4)/2,square), cochyy((PI*0.4)/2,square));
    curveVertex(cochxx((PI*0.6)/2,square), cochyy((PI*0.6)/2,square));
    curveVertex(cochxx((PI*0.8)/2,square), cochyy((PI*0.8)/2,square));    
    curveVertex(0,-square);    curveVertex(0,-square);
    endShape();
   
    translate(-w,-h);
 }
 }
  
  rotate(-PI/4);
    translate(width/2,height/2);   
noStroke();
stroke(0);
   //fill(160,233,163,255);
   noFill();
   strokeWeight(10);
   stroke(0);
   beginShape();

    for (float i = -LINE_O; i < LINE_O; i = i + 1){
   //   noStroke();
   // fill(160,233,163,8);
   //  ellipse(cochx(i,delay),cochy(i,delay),11,11);
   // fill(160,233,163,7);
   //  ellipse(cochx(i,delay),cochy(i,delay),12,12);
   //  fill(160,233,163,6);
   //  ellipse(cochx(i,delay),cochy(i,delay),13,13);
   //  fill(160,233,163,5);
   //  ellipse(cochx(i,delay),cochy(i,delay),16,16);
   //  fill(160,233,163,4);
   //  ellipse(cochx(i,delay),cochy(i,delay),20,20);
   //fill(160,233,163,155);
   //stroke(0,255);
   curveVertex(cochx(i,delay),cochy(i,delay));
   //ellipse(cochx(i,delay),cochy(i,delay),abs(cochy(i,delay))/7,abs(cochy(i,delay))/7);
    
    }
    endShape();
          
    translate(-width/2,-height/2);
   //save("Iphone_Cochleoid_Alpha.png");
  }
  //These are the parametric equations for the Cochleoid
  float cochx(float t,float u) {
 return (u*sin(radians(t*30)))/radians(t*30);
}  
float cochy(float t,float u) {
 return (u*(1-cos(radians(t*30)))/radians(t*30));
}  
//this is the Asteroid
 float cochxx(float t,float u) {
 return u*cos(t)*cos(t)*cos(t);
}  
float cochyy(float t,float u) {
 return u*sin(t)*sin(t)*sin(t);
}  
