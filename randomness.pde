  float drunk(float dVal) {
  dVal += random(-PI/60,PI/60);
  return dVal;
  }

  float wasted(float dVal) {
  dVal += random(-1,1);
  return dVal;
  }

  float wastedVal(float dVal, int range) {
  dVal += random(-range,range);
  return dVal;
  }

  void randomStroke(){
  strokeWeight(floor(random(STROKEMIN,STROKEMAX)));
  noFill();
  curveFit=wasted(curveFit);
  if ((curveFit<CURVEMIN)||(curveFit>CURVEMAX)){
    curveFit=CURVE;
  }
  redHigh=wasted(redHigh);
  if ((redHigh>REDMAX)||(redHigh<RED)){
    redHigh=REDMAX;
  }
  redLow=wasted(redLow);
  if ((redLow<REDMIN)||(redLow>RED)){
    redLow=REDMIN;
  }
  blueLow=wasted(blueLow);  
  if ((blueLow<BLUEMIN)||(blueLow>BLUE)){
    blueLow=BLUEMIN;
  }
  greenLow=wasted(greenLow);  
  if ((greenLow<GREENMIN)||(greenLow>GREEN)){
    greenLow=GREENMIN;
  }
  alphaLow=wasted(alphaLow);
  if ((alphaLow<ALPHAMIN)||(alphaLow>ALPH)){
    alphaLow=ALPHAMIN;
  }
  redHigh=wasted(redHigh);
  if ((redHigh>REDMAX)||(redHigh<RED)){
    redHigh=REDMAX;
  }
  blueHigh=wasted(blueHigh);
  if ((blueHigh>BLUEMAX)||(blueHigh<BLUE)){
    blueHigh=BLUEMAX;
  }
  greenHigh=wasted(greenHigh);
  if ((greenHigh>GREENMAX)||(greenHigh<GREEN)){
    greenHigh=GREENMAX;
  }
  alphaHigh=wasted(alphaHigh);
  if ((alphaHigh>ALPHAMAX)||(alphaHigh<ALPH)){
    alphaHigh=ALPHAMAX;
  }
  stroke(random(redLow,redHigh),random(greenLow,greenHigh),random(blueLow,blueHigh),random(alphaLow,alphaHigh));
  curveTightness(curveFit); //for the iris lines
  }
  
  void planetColourchange(){
  //println(R+" "+G+" "+B+" "+A);
    if (R <= 255){
    R += random(-1,3);
    if (R > 255){
      R = -255;
    }
    }
    if (G <= 255){
    G += random(-1,3);
    if (G > 255){
      G = -255;
    }
    }
    if (B <= 255){
    B += random(-1,3);
    if (B > 255){
      B = -255;
    }
    }
    if (A <= 75){
    A += random(0,5);
    }
    if (A > 75 ){
    A += random(0,-5);
    }
    }
    