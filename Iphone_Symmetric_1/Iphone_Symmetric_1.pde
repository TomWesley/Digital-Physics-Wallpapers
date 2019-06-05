//Title: Iphone_Symmetric_1
//Coder: Thomas Wesley
//Last Edit: June 4th, 2019
//Iphone wallpaper consisting of stacked circles to form bending lines, with gradient coloring. 


//Optional Parameter to make this export a vector file 
//import processing.svg.*;

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
int lightning = 5;
int delay = 0;
int here=0;
int tri = 0;
int fan = 0;
int fanm=0;
int para=0;
int [] temp =new int[4];
int LINE_C = 350;

//Sketch Setup - Sizing and background parameters
void setup() {
  size(750, 1334);
  background(0);
}

//Sketch Draw - Logic for the image
void draw() {
  save("Iphone_Symmetric_1_Alpha.png");
  background(255,160,220,12);
   
  
  translate(width/2,height/2);
  scale(2);
  noStroke();
  for(int j=0; j<700;j=j+1){
      fill(230+j/25,160+j/8,180+j/7,215);
      noStroke();
      quad(-200,-350+j,-200,-351+j,200,-351+j,200,-350+j);
    }
    fill(170,190,250,225);
      stroke(250,50,230,73);
      ellipse(0,-165,122,122);
      fill(185,195,245,225);
      ellipse(0,-60,50,50);
      fill(200,190,240,225);
      ellipse(0,0,30,30);
      fill(220,190,240,225);
      ellipse(0,60,50,50);
      fill(240,190,250,225);
      ellipse(0,165,122,122);
    
    for (int i = 0; i < LINE_C; i = i +1){
      
      noStroke();
      fill(0,250,164,5);
      noFill();
      fill(100,240,194,6);
      stroke(0,0,120,9);
      ellipse(-100-abs(-LINE_C/2+i)/5,(-LINE_C/2+i)*1.9,40,40);
      ellipse(+100+abs(-LINE_C/2+i)/5,(-LINE_C/2+i)*1.9,40,40);
      strokeWeight(1);
      stroke(255,80,200,10);
      strokeWeight(1);
      stroke(255,80,200,75);
      strokeWeight(0.5);

      } 
    translate(-width/2,-height/2);   
  }
