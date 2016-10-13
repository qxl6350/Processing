float zoom = 1;
float inc = 0.05;
PImage img;
int rainbow = 0;
float rotate =0;
float c;

void setup() {
  size(500, 500);
  imageMode(CENTER);
  
  img = loadImage("kappa.png");

}

void draw() {
  background(200);
  
  if (c >= 255)  c=0;  else  c += 4;

  if (mousePressed)
    if      (mouseButton == LEFT)   zoom += inc;
    else if (mouseButton == RIGHT && zoom > 0.05)  zoom -= inc;

  translate(width>>1, height>>1);
  scale(zoom);
  rotate(rotate / 100.0);
  image(img, 0, 0);

  
  if(keyPressed){
     if (key == 'a'){
      rotate -= 20;
     }
     if (key == 'd'){
      rotate += 20;
     }
  }
  
     if (key == '1'){
      rainbow = 1;
      
  }
     if (key == '2'){
      rainbow =0;
      colorMode(RGB);
      noTint();
      tint(204,0,0);
      scale(0.3);
      
  }
     if (key == '3'){
       rainbow =0;
       colorMode(RGB);
       noTint();
      tint(0,0,204);
      scale(0.3);
     
  }
     if (key == '4'){
       rainbow =0;
       colorMode(RGB);
      noTint();
      tint(0,255,0);
      scale(0.3);
      
  }
  if (key == '0'){
      rainbow =0;
      noTint();
    
  }
     if (rainbow == 1){
       colorMode(HSB);
      tint(c,255,255);
      scale(0.3);
  }
}