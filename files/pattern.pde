/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/159677*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */


PImage img;  // Declare variable "a" of type PImage

void setup() {
  size(1000, 1000);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  // for this sketch to work it has to be a square of 200x200 pixels
  img = loadImage("8.png");  // Load the image into the program
}

void draw() {
  background(0);

  int teller=0;
  for (int i = 0; i < 10; i++ )
  { 
    for (int j = 0; j < 10; j++ )
    {
      teller = teller +1;
      drawImage(i, j, random(180)*teller);    //numbers: place x - place y - rotation in degrees
    }
  }
}

void drawImage(int xC, int yC, float myAngle) {
  pushMatrix();
  translate(img.width/2 + 200*xC, img.height/2 + 200*yC );
  rotate(PI/2 * myAngle/90);
  image(img, -img.width/2, -img.height/2 );
  popMatrix();
}



void keyPressed() {
  if (keyCode == 32) {  // press spacebar to save, keycode for spacebar is 32
    save(year() + "." + month() + "." + day() + "-" + hour() + "." + minute() + "." + second() + ".jpg");
  }

  if (keyCode == 13) {  // press enter to exit
    exit();
  }
}
