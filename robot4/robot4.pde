PShape bot1;
PShape bot2;
PShape bot3;
PImage landscape;

float easing = 0.05;
float offset = 0;


void setup(){
  size(720,480);
  bot1 = loadShape("robot1.svg");
  bot2 = loadShape("robot2.svg");
  bot3 = loadShape("robot3.svg");
  landscape = loadImage("alpine.png");
  smooth();
}


void draw(){
  background(landscape);
  
  //set the left/right offset and apply easing to make the transition smooth
  
  float targetOffset = map(mouseY, 0, height, -40, 40);
  offset += (targetOffset - offset) * easing;
  
  
  //draw the left robot
  shape(bot1, 85 + offset, 65);
  
  //draw the right robot smaller and give it a smaller offset
  float smallerOffset = offset*0.7;
  shape(bot2, 510 + smallerOffset, 140, 78, 248);
  
  //draw the smallest robot, give it a smaller offset
  smallerOffset *= -0.5;
  shape(bot3, 410 + smallerOffset, 225, 39, 124);
}
  
