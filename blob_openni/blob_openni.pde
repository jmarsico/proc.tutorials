import blobDetection.*; // make blob
import processing.opengl.*; 
import java.awt.Polygon; 

import SimpleOpenNI.*; // tested with SimpleOpenNI 0.26

SimpleOpenNI context;
BlobDetection theBlobDetection;

PolygonBlob poly = new PolygonBlob();

PImage cam, blobs;

int kinectWidth = 640;
int kinectHeight = 480;

float reScale;
float globalX, globalY;
 
float minThreshold = 1000; // minimum distance from the sensor
float maxThreshold = 1500; // maximum distance from the sensor
color blobNo = color(0); // color if it's outside the range
color blobYes = color(0, 255, 0); // color if it's within the range
 
void setup() {
  size(640, 480); // this sketch doesn't actually use 3D! ;-)
  context = new SimpleOpenNI(this);
  if (!context.enableScene()) { 
    println("Kinect not connected");
  exit(); 
  } else {
  context.setMirror(true);
  //calculate the reScale value
  // currently rescaled to fill the complete width (cuts off top and bottom
  //it's also possible to fill the complete height (leaves empty sides)
  reScale (float) width/ kinectWidth;
  //create a smaller blob image for speed and efficiency
  blobs = createImage(kinectWidth/3, kinectHeight/3, RGB);
  //initialize blog detection object to the blob image dimensions
  theBlobDetection = new BlobDetection(blobs.width, blobs.height);
  theBlobDetection.setThreshold(0.2);
  setupFlowField();
  }
}
 
void draw() {
  context.update();
  //put the image into a PImage
  cam = context.sceneImage().get();
  //copy the image into the smaller blob image
  blobs.copy(cam, 0, 0, cam.width, cam.height, 0, 0, blobs.width, blobs.height);
  //blur the blob image
  blobs.filter(BLUR);
  //detect the blobs
  theBlobDetection.computeBlobs(blobs.pixels);
  //clear the polygon
  poly.reset();
  //create polygon from blobs
  poly.createPolygon();
  drawPolygon();
}

void drawPolygon() {
  
  
  
 
}

PImage getBlobImage() {
  PVector[] realWorldMap = context.depthMapRealWorld();
  PImage blobImage = createImage(context.depthWidth(), context.depthHeight(), RGB);
  for (int i=0; i<realWorldMap.length; i++) {
    PVector realWorldPoint = realWorldMap[i];
    color blobColor = blobNo;
    if (realWorldPoint.z > minThreshold && realWorldPoint.z < maxThreshold) {
      blobColor = blobYes;
    }
    blobImage.pixels[i] = blobColor;
  }
  return blobImage;
}

