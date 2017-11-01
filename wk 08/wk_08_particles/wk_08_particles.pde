//attempted to make bubles move through waves

ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

void setup() {
  size(1130, 800);
}

void draw() {
  background(120,210,255);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem part = systems.get(i);
    part.update();
  }

}
void mousePressed() {
  systems.add(new ParticleSystem(1100,250));
  systems.add(new ParticleSystem(1100,300));
  systems.add(new ParticleSystem(1100,400));
  systems.add(new ParticleSystem(1100,500));
  systems.add(new ParticleSystem(1100,550));
}