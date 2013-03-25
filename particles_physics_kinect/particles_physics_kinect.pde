import toxi.geom.*;
import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import org.openkinect.*;
import org.openkinect.processing.*;

int NUM_PARTICLES = 1500;


VerletPhysics2D physics;
AttractionBehavior mouseAttractor;

Vec2D kinectPos;

Kinect kinect;
KinectTracker tracker;

void setup(){
  size(680, 382, P3D);
  kinect = new Kinect(this);
  tracker = new KinectTracker();
  
  //setup physics with 10% drag
  physics = new VerletPhysics2D();
  physics.setDrag(0.05f);
  physics.setWorldBounds(new Rect(0, 0, width, height));
  //new NEW way to add gravity to th simulation, using behaviors
  physics.addBehavior(new GravityBehavior(new Vec2D(0, 0.01f)));
}

void addParticle(){
  VerletParticle2D p = new VerletParticle2D(Vec2D.randomVector().scale(5).addSelf(width / 2, 0));
  physics.addParticle(p);
  
  //add negatvie attraction force field around the new particle
  physics.addBehavior(new AttractionBehavior(p, 20, -1.2f, 0.01f));
}

void draw(){
 background(255, 0, 0);
 
  
  noStroke();
  fill(255);
  if (physics.particles.size() < NUM_PARTICLES){
    addParticle();
  }
  physics.update();
  for (VerletParticle2D p : physics.particles){
    ellipse(p.x, p.y, 5, 5);
  }
   tracker.track();
}

/*
void mousePressed() {
  kinectPos = new Vec2D(mouseX, mouseY);
  //create a new positive attraction force field around the mouse position (radius = 250px)
  mouseAttractor = new AttractionBehavior(kinectPos, 250, 0.7f);
  physics.addBehavior(mouseAttractor);
}


void mouseDragged(){
  kinectPos.set(mouseX,mouseY);
}

void mouseReleased(){
  //remove the mouse attractin when button as been released
  physics.removeBehavior(mouseAttractor);
}

*/
