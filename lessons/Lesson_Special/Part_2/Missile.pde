class Missile {
  PVector location;
  PVector velocity;
  
 PImage sprite;
 
 int SIZE_X = 20;
 int SIZE_Y = 20;
  
  Missile(PVector loc, PVector vel, PImage sprite){
    location = loc.copy();
    velocity = vel.copy();
    
    velocity.setMag(15);
    
    this.sprite = sprite;
    
  }
  
  boolean hit(Enemy e){
    return (location.dist(e.location) <= 25);
  }
  
  void update(){
    location.add(velocity);
  }
  
  void render(){
   push();
   pushMatrix();
   stroke(255);
   fill(198,42,33);
   //circle(location.x, location.y, 10);
   translate(location.x, location.y);
   rotate(radians(135));
   rotate(velocity.heading());   
   //circle(location.x, location.y, 20);
   image(sprite, -(SIZE_X/2) , -(SIZE_Y/2), SIZE_X, SIZE_Y);
   popMatrix();
   pop();
  
  }
  
  
}
