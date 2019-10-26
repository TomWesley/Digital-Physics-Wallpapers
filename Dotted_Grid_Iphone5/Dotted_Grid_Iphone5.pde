//Iphone background consisting of colored dots on a black background with a gradient color scheme
//Coder: Thomas Wesley 
//Last Edit 10/26/2019
//Title: Dotted Grid Iphone 5

//Variable Declarations
float r;
float g;
float b;
float l;
float h;
float a;
float i;
float var;
float j;//Runs up to the width in filling in the rows
float k;//Runs up to the length in filling in the columns
float d; //The Difference Between grid markers
//Setup function to establis the frame color and size 
void setup() {
  //Size the frame in iPhone proportions
  size(750,1334);
}
//The draw function runs through the actions contained in a loop
void draw() {
  translate(0,130);  
  background(0);
  l=width+2;
  h=height+2;
  i=1;
  j=-200.5;
  //d=1.4
  d=.57;
  a=255;
  int count=0;
  int fly=0;
  while(j<l){
    k=-200.5;
    fly=0;
  
    while(k<h){
      r=150-j/5+k/5;
      g=170+j/10-k/10;
      fill(186+(69*(k+j))/2084,85+(94*(k+j))/2084,211-(109*(k+j))/2084,a);     
      noStroke();
      var=sqrt((j%125)*(125*cos(radians(k))))*.01;      
      ellipse(j,k,d-var,d-var);      
      noFill();
      stroke(186+(69*(k+j))/2084,85+(94*(k+j))/2084,211-(109*(k+j))/2084,a);
      if((count-121)%455==0 && fly%190==0){
        translate(35,0);
        ellipse(k,j*1.4,35,35);
        translate(-35,0);
      }
      k=k+d;
      fly=fly+1;
    }
    count=count+1;
    j=j+d;
  } 
  translate(0,-130);
  //save("Dotted_Grid_Iphone5_Bravo.png"); 
}
