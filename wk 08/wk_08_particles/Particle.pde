class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float life;
  float r;
  float g;
  float b;
  float l;

  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-4, +0.1);
    dy = random(-1, +0.1);
    
    r = random(160,170)+l;
    g = random(220,230)+l;
    b = random(240,255)+l;
    c = color(r,g,b);
    
    


    s = random(40, 50);
    life = 300;
  }

  void display() {
    noStroke();
   
    l = -10;
    c = color(r, g, b);
    fill(c);
    ellipse(x, y, s, s);
  }

  void update() {
    life--;
    s = map(life, 300, 0, 50, 10);
    if (life <=15){
      x=0;
      y=0;
    }

    if (x < 900 && x >750) {
      dy= dy + .1;
   
    }
    if (x < 750 && x>600) {
      dy= dy - .25;
    }
    
    if (x < 590 && x >440) {
      dy= dy + .25;
    }
    if (x < 340 && x>190) {
      dy= dy - .2;
    }
    
    if (x < 180 && x >0) {
      dy= dy + .1;
    }
    
    
    if (x < s/2 || x > width-s/2) {
      dx *= -0.1;
     
    }
    
    x += dx;
    y += dy;
  }
}