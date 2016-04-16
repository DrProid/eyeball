  void drawCircle(){
    noStroke();
    fill(0, 254);
    ellipse(width/2,height/2,height/4,height/4);
  }
  
  void drawImage(){
    drawCircle();
    imageMode(CENTER);  
    image(img,width/2,height/2,height/4,height/4);
  }
  
  void drawLine(){
    float ctrlPoints = floor(random(ctrlPointMin,ctrlPointMax)); //number of control points in line
    int a = (ceil(random(25,35)));
    float x,y;
    theta = random(-PI,PI); //choose random angle
    r = height/2;
  
    beginShape();
  
    curveVertex(width/2, height/2); //first vertex in the middle of the screen
  
    for (int i = 0; i <= ctrlPoints; i += 1) {
      theta = drunk(theta);//randomise the angle a bit
      float joint = (i / ctrlPoints) + random(0,0.1);
      if(joint>0.9){
        joint=0.9;
      }
      x = width/2 + (r * joint * cos(theta));
      y = height/2 + (r * joint * sin(theta));
      curveVertex(x+random(-a,a), y+random(-a,a));
      //curveVertex(x, y);
      //println("x= "+x+" y= "+y);
    }
  
  endShape();
  
  }
  
  void drawPlanet(){
    if (diam>height/2 && out==1){
      if (chances<0){  
      keyIndex='c';
      }
      chances -=1;
  }
  if (diam < (random(25,50))) {
    out= 1;
  }
  if (height-diam < 10) {
    background(255,255,255,1);
    A=0;
    ellipse(width/2, height/2, diam, diam);
    out = 0;
    diam = height-10;
    //fill no stroke
  }
  if (out == 1) {//moving out
    //background(#FFFFFF);
    fill(abs(R),abs(G),abs(B),1);
    
    if (height-diam>1&&height-diam<height){
      A /= height-diam;
    }
    if (height-diam<1){
      A =0;
    }
    stroke(abs(R),abs(G),abs(B),abs(A));
    ellipse(width/2, height/2, diam, diam);
    diam += floor(random(0,3));
    planetColourchange();
    //noFill();

  }
  if (out == 0) {//moving in
    //background(#FFFFFF);
    noStroke();
    fill(abs(R),abs(G),abs(B),abs(A));
    ellipse(width/2, height/2, diam, diam);
    diam -= floor(random(0,3));
    planetColourchange();
    //stroke(abs(R),abs(G),abs(B),abs(A));

  } 
  }