//Iphone Background with a gradient backdrop and white lightning layered on top
//Coder: Thomas Wesley 
//Last Edit 1/19/2020
//Title: Iphone Lightning

//Variable Declarations
float t = 0;
float u = 0;
int x = 0;
int y = 0;
int z = 0; 

int lightning = 15;
int ning = 0;
int xx = 0;
int yy = 0;
int zz = 0;

int set=0;

void setup() {
  //The initial background is black
  background(0);
  //Size the frame in HD proportions
  size(750,1334);
  for(float i=-100;i<height;i=i+5){
    noStroke();
    fill(255,174-i/20,206-i/40,255);
  quad(0,i,0,i+10,width,i+10,width,i);
  
  }

}
//The draw function runs through the actions contained in a loop
void draw() {
  xx=-300+set*20;
  zz=200;
  if(set<180){
    
    //to bottom of frame
    yy =0;
    while(yy<height){
      int endX = xx + int(random(-5,5)); //x-value varies
      int endXX = xx + int(random(-5,5)); //x-value varies
      int endY = yy + 1;    //y just goes up
      strokeWeight(0.5);//bolt is a little thicker than a line
     
      if (yy%6==0){
        stroke(255,255,255,45); //white line
      }
      else if(yy%4==0){
        stroke(255,255,255,50);
      }
      else{
        stroke(255,255,255,55);
      }

        line(xx,yy,endXX,endY);
        line(xx+100,yy+10,endXX+100,endY+10);
        line(xx-100,yy-20,endXX-100,endY-20);
        line(xx+200,yy-35,endXX+200,endY-35);
        line(xx-200,yy+27,endXX-200,endY+27);
        line(xx+50,yy-51,endXX+50,endY-51);
        line(xx-50,yy+37,endXX-50,endY+37);
        line(xx+150,yy-56,endXX+150,endY-56);
        line(xx-150,yy+47,endXX-150,endY+47);

      xx = endX;  //then x and y are moved to the 
      yy = endY;  //end of the segment and so on
      
    }
    set=set+1;
    }
    else{
   save("Solstice_Lightning.png");
    }
}

//Function Documentation
float x(float t) {
 return sin(t/10)*100+sin(t/5)*random(45,50); 
}
float y(float t) {
 return cos(t/15) * 100; 
}  
float z(float t) {
 return sin(t*5) / 30; 
}  
float v(float t) {
 return sqrt((50*50)-(t*t)); 
}  
float vv(float t) {
 return cos((t*t))*220; 
}  
float xx(float t) {
 return sin((t*t))*220; 
}  
//Class Documentation
class Bolt{
  float xbolt;
  float ybolt;
  float trans;
  float mod = random(-10,10);
  float ifier= random(-10,10);
  float mody = random(-10,10);
  Bolt(float soh, float cah, float toa)
  {
    xbolt = cah; ybolt = soh; trans =toa;
  }
  void render(){
    ybolt = ybolt*3;
    strokeWeight(0.1);
    fill(trans,100-trans,0,0);
    stroke(0,0,0,trans);
    beginShape();
    curveVertex(xbolt,ybolt+750);
    curveVertex(xbolt,ybolt+720);
    curveVertex(xbolt+mod,ybolt+700);
    curveVertex(xbolt-mody,ybolt+650);
    curveVertex(xbolt-ifier,ybolt+600);
    curveVertex(xbolt+mody,ybolt+590);
    curveVertex(xbolt+2*mod,ybolt+535);
    curveVertex(xbolt+ifier,ybolt+420);
    curveVertex(xbolt+2.1*mod,ybolt+355);
    curveVertex(xbolt+2.9*ifier,ybolt+290);
    curveVertex(xbolt+2.9*mody,ybolt+330);
    curveVertex(xbolt-1*ifier,ybolt+180);
    curveVertex(xbolt-2*mod,ybolt+105);
    curveVertex(xbolt+2.6*ifier,ybolt+50);
    curveVertex(xbolt-2.2*mod,ybolt);
    curveVertex(xbolt+1.4*ifier,ybolt-50);
    curveVertex(xbolt-2.4*mod,ybolt-115);
    curveVertex(xbolt-1.1*ifier,ybolt-160);
    curveVertex(xbolt+1.2*mod,ybolt-205);
    curveVertex(xbolt+2,ybolt-240);
    curveVertex(xbolt+1-ifier,ybolt-295);
    curveVertex(xbolt+2.2*mody,ybolt-420);
    curveVertex(xbolt+2.2*mod,ybolt-390);
    curveVertex(xbolt+ifier,ybolt-465);
    curveVertex(xbolt,ybolt-525);
    curveVertex(xbolt,ybolt-600);
    curveVertex(xbolt,ybolt-601);
    endShape();
  }
}
  
