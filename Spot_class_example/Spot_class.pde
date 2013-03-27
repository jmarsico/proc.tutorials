// *********** New Class! **********
class Spot {
  //fields of Spot class
  float x, y;
  float diameter;
  float speed;
  int direction = 1;
 
 //constructor method.  this is called when creating a new instance of the object 
  Spot(float xpos, float ypos, float dia, float sp){
    x = xpos; //assign 33 to x
    y = ypos;  // assign 50 to y
    diameter = dia;    //assign 30 to diameter
    speed = sp;
  }
  
  void move(){
    y += (speed*direction);
    if((y > height - diameter/2) || (y < diameter/2)){
      direction *= -1;
    }
  }
  
  //method of the Spot class
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
