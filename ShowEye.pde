  PImage img;
  int CURVEMIN=-4;
  int CURVE=-2;
  int CURVEMAX=-1;
  float curveFit=CURVE;
  int STROKEMIN=1;
  int STROKEMAX=7;
  float ctrlPointMin=5;
  float ctrlPointMax=10;
  int REDMIN=10;
  int RED=50;
  int REDMAX=200;
  int GREENMIN=50;
  int GREEN=180;
  int GREENMAX=255;
  int BLUEMIN=50;
  int BLUE=200;
  int BLUEMAX=255;
  int ALPHAMIN=100;
  int ALPH=150;
  int ALPHAMAX=200;
  float redLow=random(REDMIN,RED);
  float redHigh=random(RED,REDMAX);
  float greenLow=random(GREENMIN,GREEN);
  float greenHigh=random(GREEN,GREENMAX);
  float blueLow=random(BLUEMIN,BLUE);
  float blueHigh=random(BLUE,BLUEMAX);
  float alphaLow=random(ALPHAMIN,ALPH);
  float alphaHigh=random(ALPH,ALPHAMAX);
  int detectHeight;
  int keyIndex = -1;
  
  int diam = 10;
  int out = 1;
  int R = floor(random(-255,255));
  int G = floor(random(-255,255));
  int B = floor(random(-255,255));
  int A = floor(random(-100,100));

void setup() {
  
  fullScreen();

  //size(1000,1000);
  //surface.setResizable(true);
 
  frameRate(30);
  
  background(#FFFFFF);
  
  img = loadImage("frog.png");
  
}

void draw() {
  
  if (detectHeight != height){
    detectHeight= height;
    background(255); //clear screen
  }
  
//println(hour() +":"+ minute() +":"+ second());

switch(keyIndex) {
  case 'a':
  case 'A': 
    randomStroke(); //set random strokeweight and colour
    drawLine(); //draw iris
    drawImage(); //draw pupil
    break;
  case 'b':
  case 'B':
  if (diam < (random(25,50))) {
    out= 1;
  }
  if (diam > width*0.9 || diam > height*0.9) {
    out = 0;
  }
  if (out == 1) {
    //background(#FFFFFF);
    ellipse(width/2, height/2, diam, diam);
    diam += floor(random(0,3));
    planetColourchange();
  }
  if (out == 0) {
    //background(#FFFFFF);
    ellipse(width/2, height/2, diam, diam);
    diam -= floor(random(0,3));
    planetColourchange();
  }
  break;
  default:
  randomStroke(); //set random strokeweight and colour
  drawLine(); //draw iris
  drawCircle(); //draw pupil
    break;
}
  

  
}