int x = 60;             // x - coordinate
int y = 440;            //y -coordinate
int radius = 45;        //head radius
int bodyHeight = 160;   // body height
int neckHeight = 70;   //neck height

float easing = 0.02;

void setup() {
  size(360, 480);
  smooth();
  strokeWeight(2);
  ellipseMode(RADIUS);
}

void draw() {
  int targetX = mouseX;
  x += (targetX - x) * easing;
  
  if (mousePressed) {
    neckHeight = 16;
    bodyHeight = 90;
  } else {
    neckHeight = 70;
    bodyHeight = 160;
  }
  
  float ny = y - bodyHeight - neckHeight - radius;
  
  background(204);


//Neck
stroke(102);
line(x+12, y-bodyHeight, x+2, ny);



//antennae
line(x + 12, ny, x-18, ny-43);
line(x + 12, ny, x+42, ny-99);
line(x + 12, ny, x+78, ny+15);


//body
noStroke();
fill(102);
ellipse(x, y-33, 33, 33);
fill(0);
rect(x-45, y-bodyHeight, 90, bodyHeight-33);
//fill(102);
//rect(x-45, y-bodyHeight+17, 90, 6);

//head
fill(0);
ellipse(x+12, ny, radius, radius);
fill(255);
ellipse(x+24, ny-6, 14, 14);
fill(0);
ellipse(x+24, ny-6, 3, 3);
/*
//eyes
fill(153);
ellipse(x, ny-8, 5, 5);
ellipse(x+30, ny-26, 4, 4);
ellipse(x+41, ny+6, 3, 3);

*/

}
