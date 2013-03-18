float arcStart = 0.0;
float arcEnd = 5.18;

size (1000, 800);

//ellipse( 400, 300, 700, 500);
background(255);
noFill();


for (int i = 0; i < 1000; i++){

strokeWeight(random(0.3, 1.0));

stroke(random(200, 240), random(200, 240), random(200, 255), random(30,255));
arc (random(width - 30), random(height - 30), 100, 100, (random(0.0, 6.28)), random(0.0, 6.28));



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



