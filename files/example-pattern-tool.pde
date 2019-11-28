/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/159677*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
//unravel the code, wdka.nl
 
//a square image, replacing and rotating with a function


PImage img;  // Declare variable "a" of type PImage

void setup() {
  size(640, 360);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  
  //or load it from somewhere:
  
  //for this sketch to work it has to be a square of 80x80 pixels
  img = loadImage("image.jpg");  // Load the image into the program
}

void draw() {
  
  int teller=0;
  
  for (int i = 0; i <10 ; i= i +1 )
  
  {
    
    for (int j = 0; j <10 ; j= j +1 )
  
  {

  teller = teller +1;
  drawImage(i, j, 90*teller);//numbers: place x - place y - rotation in degrees
  
  
}
}
}

void drawImage(int xC, int yC, float myAngle) {
  pushMatrix();
  translate(img.width/2 + 80*xC, img.height/2 + 80*yC );
  rotate(PI/2 * myAngle/90);
  image(img, -img.width/2, -img.height/2 );
  popMatrix();
}
