void setup() {
  size(800, 600, P2D);
  frameRate(60);
}

void setupCoordinateSystem() {
  translate(width / 2, height / 2);
  scale(100, -100);
}

float theta = 0.0;
float posx = 1.0;
float posy = 0.0;
boolean returning = false;

void draw() {
   setupCoordinateSystem();
   background(255);
   fill(0, 0, 200);
   noStroke();
   
   posx = cos(theta)*((theta/PI)+1);
   posy = sin(theta)*((theta/PI)+1);

   circle(posx, posy, 0.1);
   if(returning) {
     theta -= (PI/2)/60;
     
     if (theta < radians(0)) {
       returning = false;
     }
   } else {
     theta += (PI/2)/60;
     
     if (theta > radians(180)) {
       returning = true;
     }
   }
}
