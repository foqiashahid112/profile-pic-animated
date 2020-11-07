class Star {
  //define class variables
  float x;
  float y;
  float r;
  int n;
  int f;
  
//Constructor
Star(float tx, float ty, float tr, int tn, int tf){
  x = tx;
  y = ty;
  r = tr;
  n = tn;
  f = tf;
}

//Draw Star w/o animation
void drawStar(){
  
 pushMatrix();
 translate(x,y);
 stroke(255);
 noFill();
 f+=1;
  for(int i = 0; i < n; i++){
      PVector v = getVector(i, n);
      fill(225);
      circle(v.x,v.y,2);
  }
  for(int i = 0; i < n; i++){
     PVector a = getVector(i, n);
     PVector b = getVector(i+f, n);
     line(a.x, a.y, b.x, b.y);
  }
 popMatrix();
}
  
PVector getVector(float index, int n){
  float angle = map(index, 0, n, 0, TWO_PI);
  PVector v = PVector.fromAngle(angle);
  v.mult(r);
  return v;
}

}
