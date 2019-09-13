//Title: Iphone Epicycloid
//Coder: Thomas Wesley 
//Last Edit September 12th, 2019
//Iphone wallpaper with unique tiled background and set of epicycloid parametric equations. 

// Sketch Variable Declarations
int w = 120;
int count = 0;
int er = 0;
int exy =0;
int yguy =-10;
int messy =0;
int boltbuff=1;
float i;
int crunch =0;
int z=0;
int linez = 0;
int lineztwo = 0;
int redchange=0;
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
int other = 40;
int one = 70;
int over = 100;
int delay = 0;
int here=0;
int tri = 0;
int fan = 0;
int fanm=0;
int para=0;
float radius=10;
static int LINE_C = 105;
static int LINE_O = 360;
float sinx;
float siny;
float sinxx;
float sinyy;
float sinxxx;
float sinyyy;
//Sketch Setup - Sizing and background parameters
void setup() {
  size(760, 1340);
  background(255);
}
//Sketch Draw - Logic for the drawing
void draw() {
  background(0);
  strokeWeight(1);
  stroke(255);
  radius=10;  
  stroke(0);
  noStroke();
  fill(2,30,10,255);
  strokeWeight(.5);
  translate(radius,radius);
  for(float h = 0; h < height; h = h +radius){   
    for(float w = 0; w < width; w = w +radius){
      translate(w,h);
      stroke(0);
      noFill();
      fill(255);
      ellipse(w,h,radius*2,radius*2);    
      stroke(0);
      ellipse(w,h,radius,radius);
      fill(255,219,88,255);
      for(float Ang = (tan(w*h)*(h%180));Ang<361+(tan(w*h)*(h%180));Ang=Ang+120){
        sinx=(radius)*cos(radians(Ang))+w;
        siny=(radius)*sin(radians(Ang))+h;
        sinxx=(radius/2)*cos(radians(Ang-20))+w;
        sinyy=(radius/2)*sin(radians(Ang-20))+h;
        sinxxx=(radius/2)*cos(radians(Ang+20))+w;
        sinyyy=(radius/2)*sin(radians(Ang+20))+h;
        triangle(sinx,siny,sinxx,sinyy,sinxxx,sinyyy);    
      }
      translate(-w,-h);
    }
  }
  translate(-radius,-radius);
  translate(width/2,height/2);   
  noStroke();
  stroke(0);
  fill(160,233,163,255);
 
  strokeWeight(1);
  float epiradius=22;
  for (float i = 90; i < LINE_O+90; i = i +1){
    noStroke();   
    fill(255,219,88,255);
    stroke(0,255);
    if(i%2!=0){
    noStroke();
    }
    else{stroke(0,255);}
    ellipse(epix(i),epiy(i),epiradius,epiradius);
    rotate(PI/2);
    ellipse(epix(i),epiy(i),epiradius,epiradius);
    rotate(-PI/2);
    rotate(PI/4);
    ellipse(epix(i),epiy(i),epiradius,epiradius);
    rotate(-PI/4);
    rotate(-PI/4);
    ellipse(epix(i),epiy(i),epiradius,epiradius);
    rotate(PI/4);    
    }    
    for (float i = 0; i < LINE_C; i = i +1){
      noStroke();
      strokeWeight(2);
      fill(255,219,88,255);
      if(i%3==0){
        strokeWeight(1);
        stroke(180,180,180,255);
      }
      else{
      stroke(0,255);
      }
 
      if(i!=(LINE_C-1)){
        fill(150,150,150,255);
        noFill();
      }
      ellipse(0,0,255-i*1.6,255-i*1.6);
   }  
   strokeWeight(1);
   stroke(0);
   fill(255);
   float iconSize=20;
   translate(0,iconSize/2);
   triangle(0,-iconSize*1.6,iconSize,0,-iconSize,0);
   ellipse(0,0,iconSize*2,10);
   triangle(-iconSize/1.65,-iconSize/1.2,-iconSize,0,-(abs(iconSize-abs(iconSize/1.2))),0);
   triangle(+iconSize/1.65,-iconSize/1.2,+iconSize,0,(abs(iconSize-abs(iconSize/1.2))),0);
   noStroke();
   fill(0);
   ellipse(0,-iconSize/1.6,iconSize/3,iconSize/3);
   stroke(255);
   fill(255);
   line(-iconSize+1,0,iconSize-1,0);
   noStroke();
   ellipse(0,-iconSize/4.5,11,8);
   ellipse(0,-iconSize/7,12,9);
   stroke(0);
   ellipse(0,-iconSize/4.5,11,8);
   noStroke();
   ellipse(0,-iconSize/3.2,12,6);
   translate(0,-iconSize/2);
   translate(-width/2,-height/2);
   save("Iphone_Epicycloid_Alpha.png");
}
//The functions for the epicycloid
  float epix(float t) {
 return (80*(2+1)*cos(radians(t))-80*cos((2+1)*radians(t)));
}  
float epiy(float t) {
 return (80*(2+1)*sin(radians(t))-80*sin((2+1)*radians(t)));
}  
