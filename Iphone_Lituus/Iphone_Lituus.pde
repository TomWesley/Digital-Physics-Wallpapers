//Title: Iphone Lituus
//Coder: Thomas Wesley 
//Last Edit October 4th, 2019
//Iphone wallpaper with wavy background and a Lituus curve chain structure. 

// Sketch Variable Declarations
int delay = 0;
static int LINE_C = 1500;
float size=30;
int xx;
int yy;
int zz;
int endX;
int endY;

//Sketch Setup - Sizing and background parameters
void setup() {
  size(760, 1340);
  background(255,0,128);
}
//Sketch Draw - Logic for the drawing
void draw() {
  delay=delay+1;
  if(delay<2)
  {
    noStroke();
    fill(255,0,128,22);
    quad(0,0,width,0,width,height,0,height);
    }  
  if(delay<2){
    xx=75;
    yy =0;
    zz= int(width-125);
    while(yy<1341){
      int endX = xx + int(random(-4,4)); //x-value varies
      int endXX = xx + int(random(-4,4)); //x-value varies
      int endY = yy + 2;    //y just goes up
      strokeWeight(1);  
      stroke(255,245); //white line
      if(abs(zz)>180){
        line(xx,yy,endXX,endY);
        line(xx+zz,yy,endXX,endY);
      }
      else{
        line(xx,yy,endX,endY);//draw a tiny segment
        line(xx+200,yy,endX+202,endY);
        line(xx-240,yy,endX-243,endY);
      }     
      xx = endX; 
      yy = endY;
    }
  }
  fill(255,0,128,255);
  stroke(80,230,130,255);
  strokeWeight(1);
  translate(width/2,height/2);   
  for(float i=0;i<=LINE_C;i=i+2){
    stroke(0,255);
    noFill();
    ellipse(lituus_x(i),lituus_y(i),size-i/30,size-i/50);
    ellipse(-lituus_x(i),-lituus_y(i),size-i/30,size-i/50);
  }
  translate(-width/2,-height/2);
  save("Iphone_Lituus_Alpha.png");
}

//The functions for the Lituus curves
float lituus_x(float t) {
 return 110*sqrt((25/radians(t)))*cos(radians(t));
}  
float lituus_y(float t) {
 return 110*sqrt((25/radians(t)))*sin(radians(t));
}  
