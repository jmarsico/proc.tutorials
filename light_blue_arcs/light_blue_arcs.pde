void setup()
{

size (800, 800);

//ellipse( 400, 300, 700, 500);

noFill();
noLoop();
}

void draw (){
  background(0);
for (int i = 0; i < 10000; i++){

strokeWeight(random(0.3, 0.7));

float rArc = random(0.0, 6.28);

stroke(100, 200, 255, random(30, 80));
arc (random(200, width - 200), random(200, height - 200), 100, 100, rArc, rArc + 1.0);

  }
}

void mousePressed ()
{
  saveFrame ("arcs.jpg");
  redraw();
}

/*
stroke(100, 200, 255, 100);
arc (400, 500, 100, 100, arcStart + 2.0, arcEnd + 2.0);


stroke(105, 220, 255, 60);
arc (500, 295, 100, 100, arcStart, arcEnd);

//beginShape();

vertex(200, 200);
vertex(300, 100);
vertex(100, 400);

endShape(CLOSE);
*/



