

void setup() {
  
  //fullScreen();

  size(1000,1000);
  surface.setResizable(true);
 
  frameRate(30);
  
  background(255);
  
  img = loadImage("frog.png");

}

void draw() {
      
  if (detectHeight != height){
    detectHeight= height;
    background(255); //clear screen
  }
  
//println(hour() +":"+ minute() +":"+ second());

println(diam+" A="+A);

switch(keyIndex) {
  case 'a':
  case 'A': 
    randomStroke(); //set random strokeweight and colour
    drawLine(); //draw iris
    drawImage(); //draw pupil
      if(second()+disable==0 && random(0,1)>changeChance){
      keyIndex = 'b';
      diam =256;
      R=0;
      G=0;
      B=0;
      A=255;
      disable=1;
    }
    if (disable==1 && second()== 1){
    disable=0;
    }
    break;
    
  case 'b':
  case 'B':
    drawPlanet();
    if(diam==height/4 && random(0,1)>changeChance && out==0){
      keyIndex = 'e';
    }
  break;
  
  case 'c':
  case 'C':
    concenCircle();
  break;
  
  case 'd':
  case 'D':
    keyIndex='b';
    out=1;
    diam=height/2;
  break;
    
  default:
  randomStroke(); //set random strokeweight and colour
  drawLine(); //draw iris
  drawCircle(); //draw pupil
      if(second()+disable==0 && random(0,1)>changeChance){
      keyIndex = 'b';
      diam =255;
      R=0;
      G=0;
      B=0;
      A=255;
      disable=1;
    }
    if (disable==1 && second()== 1){
    disable=0;
    }
    break;
}


}