//Title: Iphone Blob
//Coder: Thomas Wesley 
//Last Edit: November 24th, 2019
//Iphone wallpaper with lined backgroud and set of parametric curves. 

// Sketch Variable Declarations
float asteroid=600;
float alpha=255;
float delay=0;
static final int LINE_C = 360;
//Sketch Setup - Sizing and background parameters
void setup() {
  size(750,1334);
   background(0);
}
//Sketch Draw - Logic for the drawing
void draw() {
  delay=delay+1;     
  background(255);
  for(float j=0;j<height;j=j+1){
    if(j%4==0){
      stroke(0,255);    
    }
    else if(j%5==0){
      stroke(200,200,255,255);
    }
    else{
      stroke(255,174,206,255);
    }
    line(0,j,width,j);
  }
  translate(width/2,height/2);
  for(float h=asteroid; h>0; h=h-1){
    noStroke();
    beginShape();
    noFill();
    for (float i = 0; i < LINE_C; i = (i +1)){     
      if(h%3==0){
        fill(255,0,128,alpha);
      }
      else if(h%2==0){
        fill(0,alpha);
      }
      else{
        fill(255,alpha);     
      }
      curveVertex(1.5*w(i,h),1.5*z(i,h));
    }   
    endShape();
  }
  translate(-width/2,-height/2);
  //Remove the comment on the save function to save the image
  //save("Iphone_Blob_Alpha.jpg");  
}
//The functions for the curves
float w(float u, float v) {
  float e=.3*v*sin(radians(u))*log(v+1)/cos(radians(u));
  return (e); 
} 
float z(float u, float v) {
  float e=.3*v*cos(radians(u))*log(v+1)/(.6*tan(radians(u)));
  return (e); 
}
