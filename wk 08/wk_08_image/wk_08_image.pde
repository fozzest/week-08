PImage img;


Picture p;

void setup() {
  size(800, 500);
  img = loadImage("azuma.jpg");

  p = new Picture();
}

void draw() {
  background(255);


  p.display();


//keep pressing to drop away background
  if (keyPressed) {
    if (key == 'f' || key == 'F') {
      fill(0);
     // p.blur();
      p.update();
    }
  }
}