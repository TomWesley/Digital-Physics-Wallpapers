//Title: Iphone Dotted Grid 1
//Coder: Thomas Wesley
//Last Edit: June 8th, 2019
//Iphone wallpaper consisted of a patterned grid with perturbations based on the modulus operator of the x and y coordinates.

//Optional Parameter to make this export a vector file 
//import processing.svg.*;

// Sketch Variable Declarations
float l;
float h;
float sh;
float o;
float crunch;
float delay=0;
String usedCoord[];
float j;
float r;
float g;
float b;
float a;
float i;
float var;
float k;//Runs up to the length in filling in the columns
float d; //The Difference Between grid markers

//Sketch Setup - Sizing and background parameters
void setup() {
  //Size the frame in Iphone proportions
  size(750,1334);
}
//Sketch Draw - Logic for the image
void draw() {
  //save("Iphone_Dotted_Grid_1_Charlie.png");
  background(255,242,209,255);
  delay=delay+.1;
  l=width+2;
  h=height+2;
  i=1;
  j=-1.5;
  //d=1.4
  d=1.75;
  a=255;
  while(j<l){
    k=-1.5; 
    while(k<h){
      r=150-j/5+k/5;
      g=170+j/10-k/10;
      //V1
      //fill(80+(175*(j+k))/2084,5-(5*(k+j))/2084,140-(12*(j+k))/2084,a);
      //V2
       fill(80+(0*(j+k))/2084,5+(225*(k+j))/2084,140-(10*(j+k))/2084,a);
      noStroke();
      var=((j*k+j*j)%2)*.09;
      ellipse(j,k,d+var,d+var);
      //triangle(j-1,k-1,j,k+1,j+1,k-1);   
      k=k+d;
    }
    j=j+d;
  }
}
