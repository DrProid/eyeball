  float x;
  float y;
float theta;
float r, eye;

void setup() {
  //surface.setResizable(true);
  frameRate(30);
  //size(window.innerWidth, window.innerHeight);
  size(1000,1000);
  background(#FFFFFF);
  theta = 0;
  r = height/2;
  eye = 2;
  noFill();
}

void draw() {
//x = drunk(x);
//y = drunk(y);
 
// if (x>width) {
// x=width;
// }
//  if (y>height) {
// y= height;
//  }
//  if (x<0) {
//    x=0;
// }
//  if (y<0) {
// y=0;
//  }

  //theta = drunk(theta);
  //theta += PI/random(120,360);
  
  //x = (height/2 * cos(theta))+width/2;
  //y = (height/2 * sin(theta))+height/2;
  
  //line(x, y, width/2, height/2);
  
  if (r != height/2){
    r = height/2;
    background(255);
  }

  theta = random(-PI,PI);
  int n = floor(random(1,10));
  //println(theta+"  "+n);
  //strokeWeight(floor(random(3,7)));
  //stroke(66+random(0,25),223+random(-25,25),255-random(10,50),random(100,200));
  randomStroke();
  //float t = map(mouseX, 0, width, -5, 5);
  int t = -2;
  curveTightness(t);
  //int a = floor(map(mouseY, 0, height, -50, 0));
  int a = -35;
  int b = -a;
  //println("x= "+mouseX+" y= "+mouseY);
//START CURVE
  beginShape();
  vertex(width/2, height/2);
  for (int i = 1; i <= n; i += 1) {
    theta = drunk(theta);
  x = ((r*i/n * cos(theta)) + width/2);
  y = ((r*i/n * sin(theta)) + height/2);
  curveVertex(x+random(a,b), y+random(a,b));
  //println("x= "+x+" y= "+y);
  }
  endShape();
//END CURVE  
  
  //println(x+" "+y+" "+theta);

  noStroke();

for(int i = 25; i >= 0; i--){
  fill(0, 255-(i*10));
  ellipse(width/2,height/2,(r/eye)+i,(r/eye)+i);
}

  noFill();
}

float drunk(float dVal) {
 dVal += random(-PI/60,PI/60);
 return dVal;
}

void randomStroke(){
strokeWeight(floor(random(1,6)));
stroke(random(0,255),random(0,255),random(0,255),random(0,255));
}

//set theta as random

//start curve

//divide curve into n pieces
//x=1
//xpt = (((x/n)*(height/2) * cos(theta)) + random(a,b))+width/2
//ypt = (((x/n)*(height/2) * sin(theta)) + random(a,b))+height/2
//curvepoint(x,y)
//x=2...x=n

//end curve