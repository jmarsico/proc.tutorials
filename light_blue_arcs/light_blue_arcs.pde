int phase = 0;

void setup()
{

size (800, 800);
noFill();

}

void draw (){
  if(phase == 0){
    bArc();
  }else if (phase == 1){ 
    zArc();
  }
}

void bArc(){
    background(0);
for (int i = 0; i < 2000; i++){
  strokeWeight(random(0.3, 0.7));
  float rArc = random(0.0, 6.28);
  stroke(100, 200, 255, random(30, 80));
  arc (random(200, width - 200), random(200, height - 200), 100, 100, rArc, rArc + 1.0);
  }
}

void zArc(){
  
background(255);

for (int i = 0; i < 2000; i++){

strokeWeight(random(0.3, 0.7));

float rArc = random(0.0, 6.28);

stroke(10, 10, 255, random(30, 80));
arc (random(200, width - 200), random(200, height - 200), 100, 100, rArc, rArc + 1.0);
  
}  
}

void keyPressed(){
  if (key == ' '){
    phase = 1;
  } 
 
}

void mousePressed(){
  phase = 0;
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



