//Liam Lan 9/23/2016
PImage img;

void setup() {
size(1000, 500);
img = loadImage("cat.gif");
}
void draw() {

image(img, 0, 0);
image(img, 0, mouseY * -2);
}