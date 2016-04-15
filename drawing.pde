  void drawCircle(){
    noStroke();
    fill(0, 255);
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
    float theta = random(-PI,PI); //choose random angle
    float r = height/2;
  
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
  