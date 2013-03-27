class Ring {
  float x, y;
  float diameter;
  boolean on = false; //turns the display on and off
  float r = 0;
  float g = 0;
  float b = 0;
  float a = 0;
  
  void start(float xpos, float ypos){
    x = xpos;
    y = ypos;
    on = true;
    diameter = 1;
    r = random(0,255);
    g = random(0, 255);
    b = random(0, 255);
    a = random(30, 100);
    
  }
  
  void grow(){
    if (on == true){
      diameter += 0.5;
      if (diameter > 400){
        on = false;
      }
    }
  }
  
  void display(){
    if (on == true) {
      noFill();
      strokeWeight(4);
      stroke(r, g, b, a);
      ellipse(x, y, diameter, diameter);
    }
  }
}
