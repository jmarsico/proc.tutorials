class Spinner{
  float x, y;
  float radius;
  float arcStart;
  float arcStop;
  color c;
  float speedX;
  float speedY;
  int directionX = 1;
  int directionY = 1;
  
  
  Spinner(float xpos, float ypos, float rad, float arcSrt, float arcStp, color col, float spdX, float spdY){
  x = xpos;
  y = ypos;
  radius = rad;
  arcStart = arcSrt;
  arcStop = arcStp;
  c = col;
  speedX = spdX;
  speedY = spdY;
}

void move(){
  //y movement
  y += (speedY*directionY);
  if((y > height - radius) || (y < radius)){
    directionY *= -1;
  }
  
  //x movement
  x += (speedX*directionX);
  if ((x > width - radius) || (x < radius)){
    directionX *= -1;
  }
}

void display(){
  noFill();
  stroke(c);
  arc(x, y, radius, radius, arcStart, arcStop);
}
}
  
