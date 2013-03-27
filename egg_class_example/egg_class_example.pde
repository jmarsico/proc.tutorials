Egg humpty; //declare the object

void setup(){
  size(100, 100);
  smooth();
  humpty = new Egg(50, 100, PI/60, 100);
}

void draw(){
  background(0);
  humpty.wobble();
  humpty.display();
}
