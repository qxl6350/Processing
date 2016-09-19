
void setup() {
size(1000,700);
}
int x_change = 0;
int y_change = 0;



void draw() {
//background
background(255);

int left_eye_x = 400 + x_change;
int right_eye_x = 600 + x_change;
int left_eye_y = 270 + y_change;
int right_eye_y = 270 + y_change;
float left_y_difference = mouseY - left_eye_y;
float right_y_difference = mouseY - right_eye_y;
float left_x_difference = mouseX - left_eye_x;
float right_x_difference = mouseX - right_eye_x;
float left_eye_ychange = 0.1 * left_y_difference;
float right_eye_ychange = 0.1 * right_y_difference;
float left_eye_xchange = 0.07 * left_x_difference;
float right_eye_xchange = 0.07 * right_x_difference;
 
if (keyPressed && (key == CODED)) { // If it's a coded key
if (keyCode == LEFT) { // If it's the left arrow
x_change -= 2;
}  
else if (keyCode == RIGHT) { // If it's the right arrow
x_change += 2;
}
}

if (keyPressed && (key == CODED)) { // If it's a coded key
if (keyCode == UP) { // If it's the left arrow
y_change -= 2;
}  
else if (keyCode == DOWN) { // If it's the right arrow
y_change += 2;
}
}

//arrow
beginShape();
fill(128,128,128);
vertex(150, 145);
vertex(175, 120);
vertex(175, 135);
vertex(850, 135);
vertex(850, 150);
vertex(175, 150);
vertex(175, 165);
vertex(150, 145);
endShape();

if (mousePressed) {
fill(102,204,255);
} else {
fill(255,204,213);
}

//hand
ellipse(225 + x_change,415 + y_change,200,125);
ellipse(775 + x_change,415 + y_change,200,125);

//face
ellipse(500 + x_change,350 + y_change,600,600);

fill(255,51,87);

//feet
ellipse(650 + x_change,610 + y_change,200,100);
ellipse(350 + x_change,610 + y_change,200,100);

//eye-black
fill(0);
ellipse(400 + x_change,250 + y_change,100,200);
ellipse(600 + x_change,250 + y_change,100,200);

//eye-white
fill(255);
ellipse(400 + x_change + left_eye_xchange,270 + y_change + left_eye_ychange,20,35);
ellipse(600 + x_change + right_eye_xchange,270 + y_change +  right_eye_ychange,20,35);

fill(255,153,171);

//blush
ellipse(325 + x_change,375 + y_change,50,25);
ellipse(675 + x_change,375 + y_change,50,25);

//mouth
if (keyPressed) {
if ((key == 'b') || (key == 'B')) {
  fill(255);
}
}
arc(500 + x_change,425 + y_change,100,100,QUARTER_PI*8,QUARTER_PI*12);
}