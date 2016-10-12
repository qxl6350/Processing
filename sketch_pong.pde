float x = 400;
float y = 250;
int Gamestate = 0;
PImage kaga;
float SpeedY = random(30,40) * random(-1,1);
float SpeedX = random(30,40) ;
int time;
int time2;
int score;


void setup() {
size(800, 500);
kaga = loadImage("kaga.jpg");
ellipseMode(CENTER);
}

void draw() {
  image(kaga,0,0);
  rect(770,mouseY-50,5,100);
  rect(0,0,50,500);
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(x,y,15,15);
  
if (mousePressed) {
  if (mouseButton == LEFT) {
    Gamestate = 1;
  }
  else{
    Gamestate = 0;
  }
}

if (Gamestate > 0) {
  x = x + SpeedX;
  y = y + SpeedY;
  text(time - time2, 100, 100);
  text(score, 200, 100);
  time =  millis()/1000;
}



if ( x > 770 && x < 770 + SpeedX && y < mouseY + 50 && y > mouseY - 50) {
  SpeedX = SpeedX * -1.01;
  score = score +1;
  
}

if ( x < 50) {
  SpeedX = SpeedX * -1.01;
}

if ( y < 0) {
  SpeedY = SpeedY * -1.01;
}

if ( y > 500) {
  SpeedY = SpeedY * -1.01;
}

if ( x > 800) {
  Gamestate = 0;
}

if ( Gamestate == 0) {
   x = 400;
   y = 250;
   SpeedY = random(5) * random(-1,1);
   SpeedX = random(5) ;
   time2 = millis()/1000;
     
    
}




}