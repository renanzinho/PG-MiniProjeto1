float x, y;
float angle1 = PI/2;
float angle2 = 0.0;
float segLength = 50;
float time = 2.0;

void setup() {
  size(800, 600);
  frameRate(60);
  
  strokeWeight(30);
  stroke(255, 160);
  
  x = width * 0.5;
  y = height/5;
}

void draw() {
  background(0);
  
  if(angle1 > PI/2 - PI/6) {
    angle1 -= (PI/6)/(60*time);
    angle2 -= (PI/6)/(60*time);
  }
  
  pushMatrix();
  segment(x, y, angle1, segLength*2); 
  segment(segLength*2, 0, angle2, segLength*3);
  popMatrix();
}

void segment(float x, float y, float a, float len) {
  translate(x, y);
  rotate(a);
  line(0, 0, len, 0);
}
