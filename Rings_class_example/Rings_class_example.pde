Ring[] rings;
int numRings = 50;
int currentRing = 0;

void setup(){
  size(480, 480);
  smooth();
  rings = new Ring[numRings];
  for (int i = 0; i < numRings; i++){
    rings[i] = new Ring();
  }
}


void draw() {
  background(0);
  for (int i = 0; i < numRings; i++){
    rings[i].grow();
    rings[i].display();
  }
}

void mousePressed(){
  rings[currentRing].start(mouseX, mouseY);
  currentRing++;
  if (currentRing >= numRings) {
    currentRing = 0;
  }
}
