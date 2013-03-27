int numSpots = 6;

Spot[] spots = new Spot[numSpots];


void setup(){
  size(100, 100);
  smooth();
  noStroke();
  for (int i = 0; i < spots.length; i++) {
    float x = 10 + i*16;
    float rate = 0.5 + i*1.0;
    spots[i] = new Spot(x, 50, 16, rate);
                            
  }
}

void draw(){
  //background(0);
 fill (0, 100);
 rect(0, 0, width, height);
  fill(255);
  for (int i = 0; i < spots.length; i++){
    spots[i].move();
    spots[i].display();
  }
}




