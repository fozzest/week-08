class Sword {
  boolean inUse;        //true if Sword is being held by character
  float x;                // x position of character's sword
  float y;                // y position of character's sword
  float glow;              // how much magic held in sword observed by glow
  boolean prod;          // true if Sword is being PRODDED
  boolean hack;          //true if Sword is being HACKED
  PImage[] sprite;  // this houses the different states of the sword, depending on damage taken or magic held in sword
  int hasMagic;       // this integer tracks if the sword has power 
  boolean broken;      // only true if Sword is BROKEN, has taken too much damage

  Sword() {
    //Mario constructor
  }
  
  void update() {
    //update Sword's state
  }

  void display() {
    //display Sword on the screen if inUse
    //PImages of sword change based off sword's state
    
  }

  void power() {
    //sword gains or loses magic
  }

  void attack() {
    //animate Sword, calling on boolean prod and boolean hack
  }
  
  void break() {
    //sword can break if used too much, and be unable to be used
  }
}