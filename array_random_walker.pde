int num = 100;

float x[] = new float [num];
float y[] = new float [num];
color c[] = new color[num];
float s[] = new float [num];

void setup() {
  size(600, 600);
  background(0);
  rectMode(CENTER);
  for (int i = 0; i < num; i++) {
    x[i] = random(600);
    y[i] = random(600);
    c[i] = color(random(255), random(255), random(255));
  }
  noStroke();
}

void draw() {
  
  for (int i = 0; i < num; i++) {
    float r = int(random(8));
    if (r == 0) {
      y[i] -= 10;
    } else if (r == 1) {
      x[i] += 10;
    } else if (r == 2) {
      y[i] += 10;
    } else if(r==3){
      x[i] -= 10;
    } else if(r==4){
      x[i] -= 10;
      y[i] -= 10;
    } else if(r==5){
      x[i] += 10;
      y[i] += 10;
    } else if(r==6){
      x[i] += 10;
      y[i] -= 10;
    } else {
      x[i] -= 10;
      y[i] += 10;
    }
   s[i] = int(random(4));
   fill(c[i]);
    if (s[i]  == 0) {
      triangle(x[i] , y[i] , x[i] +10, y[i] , x[i] +5, y[i] +10);
    } else if (s[i]  == 1) {
      triangle(x[i] , y[i] +10, x[i] +10, y[i] +10, x[i] +5, y[i] );
    } else if (s[i]  == 2) {
      ellipse(x[i] , y[i] , 10, 10);
    } else {
      rect(x[i] , y[i] , 10, 10);
    } 
  }
  
}