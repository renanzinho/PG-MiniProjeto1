float x, y;
float center = 5.0;
float angle = 0.0;
float r = 5.0;

void setup() {
  size(800, 800, P2D);
  frameRate(60);

  stroke(255, 160);
  
  fill(204, 102, 0);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  scale(10, -10);
  
  x = cos(angle) * r;
  y = sin(angle) * r;

  circle(x,y, 1.0);
  angle += (2*PI)/60;
}
  
  
  
  
