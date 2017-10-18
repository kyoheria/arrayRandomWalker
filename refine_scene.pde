boolean switchState = false;
float switchPosX[] = new float [5] ;
float switchPosY[] = new float [5] ;
float switchRadius = 50;
PImage castel;
PImage ghost;
PImage majyo;
PImage jack;



void setup() {
  fullScreen();
  castel = loadImage("castel.png");
  ghost = loadImage("ghost.png");
  majyo = loadImage("majyo.png");
  jack = loadImage("jack.png");
}

void draw() {
  background(255);
  
  if (switchState) {
    image(castel, 300,100,800,800);
  } else {
    background(0);
    image(ghost, 1000,20,200,200);
    image(jack, 550,500,400,400);
    image(majyo, 300,100,300,300);
    
  }
  for (int i =0; i<5; i++){
    ellipse(switchPosX[i], switchPosY[i], switchRadius * 2, switchRadius * 2);
  }
}

void mousePressed() {
  for (int i =0; i<5; i++){
    if (dist(mouseX, mouseY, switchPosX[i], switchPosY[i]) < switchRadius) {
      switchState = !switchState;
    }
  }
}