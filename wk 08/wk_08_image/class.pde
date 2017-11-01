class Picture {
  float x;   //x position
  float y;   //y position
  float n; //opacity



  Picture() {
    x = 0;
    y = 0;
    n = 0;
  }


  void display() {
    noStroke();
    fill(100);

    //image(img, x, y);
    image(img, x, y, 820, 550);
  }


  void update() {
     fill(255, 255, 255, n);
    rect(0, 0, width, height);
    n = n +1;
    int horiz = 10;
    int vert = 10;

    for (int i = 0; i < width; i+=horiz) {
      for (int j = 0; j < height; j+=vert) {


        color c = img.get(i, j);
        float red = red(c);
        float green = green(c);
        float blue = blue(c);



        float brightness = (red+green+blue);
        fill(red, green, blue);



        float s = map(brightness, 0, 255, 0, 8);
        //if (s > 10){
        ellipse(i, j, s, s);
      }
    }
  }
  //void blur() {
  //  fill(0, 0, 0, n);
  //  rect(0, 0, width, height);
  //  n = n +3;
  //}
}