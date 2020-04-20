/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/159677*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */


PImage img;  
PImage imgbg;

void setup() {
  size(800, 600);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  // for this sketch to work it has to be a square of 200x200 pixels preferably
  img = loadImage("namewhite.png");  // Load the image into the program
  imgbg = loadImage("namegrey.png");
}

void draw() {
  background(0);
  evenRows();
  oddRows();
}

void evenRows() {
  int teller=0;
  for (int i = 0; i < 30; i++ ) {

    for (int j = 0; j < 30; j++ ) {

      if (j % 1 == 0) {
        teller = teller + 1;
        drawImage(i, j, mouseY);    //numbers: place x - place y - rotation in degrees decided by mouseX value
      }
    }
  }
}

void oddRows() {
  int teller=0;
  for (int i = 0; i < 20; i++ ) {

    for (int j = 0; j < 20; j++ ) {

      if (j % 2 != 0) {
        teller = teller + 1;
        drawImageOdd(i, j, mouseX);    //numbers: place x - place y - rotation in degrees decided by mouseX value
      }
    }
  }
}

void drawImage(int xC, int yC, float myAngle) {
  pushMatrix();
  translate(img.width/2 + 200*xC - 1200, img.height/2 + 200*yC + 1100);
  rotate(PI/2 * myAngle/90);
  image(imgbg, -img.width/2, -img.height/2 );
  popMatrix();

  pushMatrix();
  translate(img.width/2 + 200*xC - 1200, img.height/2 + 200*yC - 1100);
  rotate(PI/2 * myAngle/90);
  image(imgbg, -img.width/2, -img.height/2 );
  popMatrix();
}

void drawImageOdd(int xC, int yC, float myAngle) {
  pushMatrix();
  translate(img.width/2 + 200*xC - 1300, img.height/2 + 200*yC - 1100);
  rotate(PI/2 * -myAngle/90);
  image(img, -img.width/2, -img.height/2 );
  popMatrix();

  pushMatrix();
  translate(img.width/2 + 200*xC - 1300, img.height/2 + 200*yC - 1300);
  rotate(PI/2 * -myAngle/90);
  image(img, -img.width/2, -img.height/2 );
  popMatrix();
}



void keyPressed() {
  if (keyCode == 32) {  // press spacebar to save, keycode for spacebar is 32
    save(year() + "." + month() + "." + day() + "-" + hour() + "." + minute() + "." + second() + ".jpg");
  }
}
