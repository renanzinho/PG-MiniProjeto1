float x, y;
float angle = 0.0;
float r = 5.0;
PVector center = new PVector(5.5, 5.5);

void setup() {
  size(800, 800, P3D);
  frameRate(60);
}

void setupCoordinateSystem() {
  translate(width / 2, height / 2);
  scale(30, -30);
  
  rotateY(-PI/3.0);
  rotateX(PI/2 - asin(6.0/8.0));
}

void drawAxis() {
  //X  - red
  stroke(192,0,0);
  line(0,0,0,10,0,0);
  //Y - green
  stroke(0,192,0);
  line(0,0,0,0,10,0);
  //Z - blue
  stroke(0,0,192);
  line(0,0,0,0,0,10);
}

void draw() {
  background(255);
  
  setupCoordinateSystem();
  //drawAxis();
  
  noStroke();

  fill(68, 67, 174);
  square(0, 0, 11);
  
  x = center.x + cos(angle) * r;
  y = center.y + sin(angle) * r;
  
  fill(247, 149, 8);
  circle(x,y, 1.0);
  
  angle += (2*PI)/60;
  
  fill(255, 0, 0);
  circle(5, 0.5, 1.0);
}
  
  
  
  
