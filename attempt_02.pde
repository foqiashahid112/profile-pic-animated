Star[] stars = new Star[25];

void setup(){
  frameRate(1);
  //fullScreen();
  size(500,500);
  background(0);

  //Variables
   float x = width/10;
   float y = height/2;
   float r = width/10;
   int n = 10;
   int f = 2;
    for(int i = 0; i < stars.length; i++){
          stars[i] = new Star(x, y, r, n, f);
           x+= width/5;     
    }
}


void draw(){
  for (int i = 0; i < stars.length; i++){
    stars[i].drawStar();
  }
}
