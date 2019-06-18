//Title: Iphone Bubblegum
//Coder: Thomas Wesley 
//Last Edit June 17th, 2019
//Iphone wallpaper with a peaceful cloudy blend of colors

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
static int LINE_C = 100;

//Sketch Setup - Sizing and background parameters
void setup() {
  size(750, 1334);
  background(0);
  //img = loadImage("RedVelv.jpg");
  // I fill the array with a for loop;
  // running 800 times, it creates a new star using the Star() class.
}
//Sketch Draw - Logic for the drawing
void draw() {
  delay=delay+1;
  if(mousePressed){
 save("Iphone_Bubblegum_Alpha.png");
  }
  noStroke();
  //Version 1
  fill(214,211,255,8);
  //Version 2
  //fill(255,255,255,4);
  //Version 3
  //fill(255,240,0,4);
  if(delay%80==0){
  quad(0,0,width,0,width,height,0,height);
  }
  
  
    translate(width/2,height/2);   

    for (int i = 0; i < LINE_C; i = i +1){
   
    if(i%12==0){
    noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    translate(0,200);
    
    
    noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
     translate(0,-200);
    translate(0,400);
    
     noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
     translate(0,-400);
    translate(0,600);
    
     noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
     translate(0,-600);
    translate(0,800);
    
     noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
     translate(0,-800);
    translate(0,1000);
    
     noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
     translate(0,-1000);
    translate(0,1200);
    
     noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
     translate(0,-1200);
    translate(0,1400);
     
     noStroke();
    fill(255,0,128,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,174,204,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
    fill(255,242,209,3);
    ellipse(random(-400,400),random(-700,-500),i/2,i/2);
     translate(0,-1400);
    
    }
      } 
    
    translate(-width/2,-height/2);
   
  }
