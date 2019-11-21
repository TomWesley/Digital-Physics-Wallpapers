int delay = 0;
int LINE_C = 80;
float speed=0;
Star[] stars = new Star[1000];

void setup() {
  size(750,1334);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(); 
  }
  background(0);

}
void draw() {
  delay=delay+1;
  strokeWeight(1);
  translate(width/2,height/2);
  //Do the stars only once so that the other components can be painted overtop in conflicting areas.
  if(delay==1){ 
    for (int i = 0; i < stars.length; i++) {
      //Update the location of each star in the array
      stars[i].update();
      //Pass in the color and opacity values for the stars in the array
      stars[i].show(255,255,255,255);
    }
  }
  scale(2);
  float j=0;
  float k =0;
  //Loop through the parametric equations to sketch the main components.
  for (int i = 10; i < LINE_C; i = i +1){
    stroke(255,176,204,10);
      strokeWeight(0.1);
      noFill();
      if(i%3==0){
      triangle(one_x(i),one_y(i),two_x(i),two_y(i),0,0);
      triangle(-one_x(i),one_y(i),-two_x(i),two_y(i),0,0);
      }
      noFill();
      stroke(176,196,243,10);
      strokeWeight(1);
      if(i%2==0){
        ellipse(0,20+i*4,250-.1*(i*i),20-i/8);
        j = i+.25;
        ellipse(0,20+j*4,250-.1*(j*j),20-j/8);
        k = i+.75;
        ellipse(0,20+k*4,250-.1*(k*k),20-k/8);
      }
      rotate(PI);
      if(i%2==0){
        ellipse(0,20+i*4,250-.1*(i*i),20-i/8);
        j = i+.25;
        ellipse(0,20+j*4,250-.1*(j*j),20-j/8);
        k = i+.75;
        ellipse(0,20+k*4,250-.1*(k*k),20-k/8);
      }
      rotate(-PI);
    } 
    translate(-width/2,-height/2);
    save("Iphone_Spacey_Alpha.png");
  }
//Classes
class Star {
  float x; float y; float z;float pz;
  Star() {
    // I place values in the variables
    x = random(-width/2, width/2);
    // note: height and width are the same: the canvas is a square.
    y = random(-height/2, height/2);
    // note: the z value can't exceed the width/2 (and height/2) value,
    // beacuse I'll use "z" as divisor of the "x" and "y",
    // whose values are also between "0" and "width/2".
    z = random(width/2);
    // I set the previous position of "z" in the same position of "z",
    // which it's like to say that the stars are not moving during the first frame.
    pz = z;
  }
  void update() {
    z = z - speed;
    if (z < 1) {
      z = width/2;
      x = random(-width/2, width/2);
      y = random(-height/2, 0);
      pz = z;
    }
  }
  void show(float uno, float dos, float tres, float quatro) {
    fill(uno,dos,tres,quatro);
    noStroke();
    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);;
    // I use the z value to increase the star size between a range from 0 to 16.
    float r = map(z, 0, width/2, 3, 0);
    ellipse(sx, sy, 2, 2);
    // Here i use the "pz" valute to get the previous position of the stars,
    // so I can draw a line from the previous position to the new (current) one.
    float px = map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);
    // Placing here this line of code, I'm sure the "pz" value are updated after the
    // coordinates are already calculated; in this way the "pz" value is always equals
    // to the "z" value of the previous frame.
    pz = z;
    stroke(uno,dos,tres,quatro);
    strokeWeight(1);
    line(px, py, sx, sy);
  }
}
float one_x(float t) {
 return -t*t*.013;
}  
float one_y(float t) {
 return (-42*sin(radians(sqrt(t*t))));
}

float two_x(float t) {
 return t*t*.013;
}  
float two_y(float t) {
 return (42*sin(radians(sqrt(t*t))));
}
