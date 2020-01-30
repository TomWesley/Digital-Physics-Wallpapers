//Title: Iphone Blob 2
//Coder: Thomas Wesley 
//Last Edit: January 30th, 2020
//Iphone wallpaper with lined backgroud and set of parametric curves. 

// Sketch Variable Declarations
float asteroid=114;
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
  for(float j=-500;j<height;j=j+1){
    if(j%3==0){
      stroke(0,255);  
   
    }
    else if(j%4==0){
      stroke(0,0,160,255);
    }
    else{
      stroke(255,223,0,255);
  
    }
    line(0,j,width,j);
  }
  translate(width/2.7,height/2);
 
  for(float h=asteroid; h>0; h=h-1){
    noStroke();
    beginShape();
    noFill();
    for (float i = 0; i < LINE_C; i = (i +1)){     
      if(h%3==0){
        fill(176,224,230,alpha);
      }
      else if(h%2==0){
        fill(0,alpha);
      }
      else{
        fill(255,alpha);     
      }
      curveVertex(w(i,h),z(i,h));
    }   
    endShape();
  }
  translate(-width/2.7,-height/2);
  
  //Second Triangle
   
  translate(width-width/2.7,height/4);
   rotate(PI);
  for(float h=asteroid; h>0; h=h-1){
    noStroke();
    beginShape();
    noFill();
    for (float i = 0; i < LINE_C; i = (i +1)){     
      if(h%3==0){
        fill(176,224,230,alpha);
      }
      else if(h%2==0){
        fill(0,alpha);
      }
      else{
        fill(255,alpha);     
      }
      curveVertex(w(i,h),z(i,h));
    }   
    endShape();
  }
   rotate(-PI);
  translate(-(width-width/2.7),-height/4);
  //Third Triangle
   translate(width-width/2.7,height-height/4);
   rotate(PI);
  for(float h=asteroid; h>0; h=h-1){
    noStroke();
    beginShape();
    noFill();
    for (float i = 0; i < LINE_C; i = (i +1)){     
      if(h%3==0){
        fill(176,224,230,alpha);
      }
      else if(h%2==0){
        fill(0,alpha);
      }
      else{
        fill(255,alpha);     
      }
      curveVertex(w(i,h),z(i,h));
    }   
    endShape();
  }
   rotate(-PI);
  translate(-(width-width/2.7),-(height-height/4));
  
  //Remove the comment on the save function to save the image
  save("Iphone_Blob_2_Alpha.jpg");  
}
//The functions for the curves
float w(float t, float v) {
  float a=1;

  float e=a*(2*cos(radians(t))+cos(2*radians(t)));
  return (e*v); 
} 
float z(float t, float v) {
  float a=1;

  float e=a*(2*sin(radians(t))-sin(2*radians(t)));
  return (e*v); 
}
