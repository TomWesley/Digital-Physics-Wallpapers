//Coder: Thomas Wesley 
//Last Edit: July 11th, 2021
//Iphone wallpaper with lined backgroud and set of parametric curves. 

// Sketch Variable Declarations

import processing.svg.*;

float asteroid=100;
float alpha=255;
float delay=0;
color One = color(255, 200, 10, 255);
color Two = color(240, 110, 150, 255);
color Three = color(43, 88, 222, 255);

static final int LINE_C = 360;
//Sketch Setup - Sizing and background parameters
void setup() {
  size(750, 1334, SVG, "Iphone_Tristoids.svg");
  background(0);
}
//Sketch Draw - Logic for the drawing
void draw() {
  delay=delay+1;     
  background(255);
  for (float j=-500; j<height; j=j+1) {
    if (j%9==0) {
      stroke(255, 255);
    } else if (j%6==0) {
      stroke(Two);
    } else {
      stroke(One);
    }
    line(0, j, width, j);
  }
  translate(width/2.7, height/2);

  for (float h=asteroid; h>0; h=h-1) {
    noStroke();
    beginShape();
    noFill();
    for (float i = 0; i < LINE_C; i = (i +1)) {     
      if (h%3==0) {
        fill(Three);
      } else if (h%2==0) {
        fill(0);
      } else {
        fill(100);
      }
      curveVertex(w(i, h), z(i, h));
    }   
    endShape();
  }
  translate(-width/2.7, -height/2);

  //Second Triangle

  translate(width-width/2.7, height/4);
  rotate(PI);
  for (float h=asteroid; h>0; h=h-1) {
    noStroke();
    beginShape();
    noFill();
    for (float i = 0; i < LINE_C; i = (i +1)) {     
      if (h%3==0) {
        fill(Three);
      } else if (h%2==0) {
        fill(0);
      } else {
        fill(100);
      }
      curveVertex(w(i, h), z(i, h));
    }   
    endShape();
  }
  rotate(-PI);
  translate(-(width-width/2.7), -height/4);
  //Third Triangle
  translate(width-width/2.7, height-height/4);
  rotate(PI);
  for (float h=asteroid; h>0; h=h-1) {
    noStroke();
    beginShape();
    noFill();
    for (float i = 0; i < LINE_C; i = (i +1)) {     
      if (h%3==0) {
        fill(Three);
      } else if (h%2==0) {
        fill(0);
      } else {
        fill(100);
      }
      curveVertex(w(i, h), z(i, h));
    }   
    endShape();
  }
  rotate(-PI);
  translate(-(width-width/2.7), -(height-height/4));

  //Remove the comment on the save function to save the image
  //save("Iphone_Blob_2_Alpha.png");
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
