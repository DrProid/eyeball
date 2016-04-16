   void concenCircle(){
    translate(width/2,height/2);
  rotate(radians(random(0,360)));
    randomStroke();

    
    arc(0, 0, abs(fat), abs(tall), radians(0), radians(360));
    fat=wastedVal(fat,diam/10);
    tall=wastedVal(tall,diam/10);
    if (tall<diam/10||tall>diam/2){
      tall=random(10,diam/2);
    }
    if (fat<diam/10||fat>diam/2){
      fat=random(10,diam/2);
    }
    keyIndex='b';
    chances=floor(random(5,10));
   }