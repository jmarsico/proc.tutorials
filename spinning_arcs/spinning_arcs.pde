int numSpinners = 2000;

Spinner[] spinners = new Spinner[numSpinners];

void setup(){
  size(700, 700);
  smooth();
  for(int i = 0; i < spinners.length; i++){
    float x = width/2;
    float y = height/2;
    float rad = random(20, 100);
    float arcSrt = random(0, 6.28);
    float arcStp = random(0, 6.28);
    color col = color(0, 0, random(200, 255), random(10, 40));
    float speedX = random(-1.0, 1.0);
    float speedY = random(-1.0, 1.0);
    spinners[i] = new Spinner(x, y, rad, arcSrt, arcStp, col, speedX, speedY);
  }
}

void draw(){
  background(255);
  for( int i = 0; i < spinners.length; i++){
    spinners[i].move();
    spinners[i].display();
  }
}
