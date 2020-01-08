//Hexagonal and Triangle Pattern Background with a retro technology look. 
//Coder: Thomas Wesley 
//Last Edit 1/07/2018
//Title: Hex Pattern

//Variable Declarations
float size;


void setup() {
  //The initial background is black
  background(0,100);
  //Size the frame in HD proportions
  size(750,1334);
}
//The draw function runs through the actions contained in a loop
void draw() {
  float sq=sqrt(3);
  size=5;
  background(0);
  float row=0;
  float col=0;
 
  for(float i=0;i<width+size;i=i+(2*size)){
    row=row+1;
    col=0;
    for(float j=size*sq/2;j<height+size;j=j+(size*sq)){
      col=col+1;
      if((col-row)%9==0){
        fill(80,5,140,255);
      }
      else if((row+col*col)%11==0){
    fill(255,0,128,255);
      }
      else{
      fill(255,255,255,255);
      }
    noStroke();
  if((row*col+int(5*noise(row+col)))%4==0){
    //quad(i+size/2,j-(size*sq)/2,i-size/2,j-(size*sq)/2,i-size/2,j+(size*sq)/2,i+size/2,j+(size*sq)/2);
  }
  else{
  pushMatrix();
  polygon(i, j, size, 6);  // Heptagon
  popMatrix();
  }
  //fill(255,240,140,255);
//  fill(255,242,209,255);
 // stroke(255,242,209,255);
  triangle(i+size,j+size/2.5,i+size-size/6,j+size/2.5+(size/6)*sqrt(3),i+size+size/6,j+size/2.5+(size/6)*sqrt(3));

//strokeWeight(2);
line(i+size,j+size/2.5,i+size,j);
line(i+size-size/6,j+size/2.5+(size/6)*sqrt(3),i+size/2,j+(size*sq)/2);
line(i+size+size/6,j+size/2.5+(size/6)*sqrt(3),i+(size*3)/2,j+(size*sq)/2);
//translate(width/2,height/2);
//rotate(PI);
line(i+size,j-size/2.5,i+size,j);
line(i+size-size/6,j-size/2.5-(size/6)*sqrt(3),i+size/2,j-(size*sq)/2);
line(i+size+size/6,j-size/2.5-(size/6)*sqrt(3),i+(size*3)/2,j-(size*sq)/2);
triangle(i+size,j-size/2.5,i+size-size/6,j-size/2.5-(size/6)*sqrt(3),i+size+size/6,j-size/2.5-(size/6)*sqrt(3));


}
}

    
    translate(-width/2,-height/2);
    save("Iphone_Hex_Alpha.png");
}

//Function Documentation

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
