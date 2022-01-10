class Missile {
  PVector location;
  PVector velocity;
  
  Missile(PVector loc, PVector vel){
    location = loc.copy();
    velocity = vel.copy();
    
    velocity.setMag(15);
    
  }
  
  boolean hit(Enemy e){
    return (location.dist(e.location) <= 25);
  }
  
  void update(){
    location.add(velocity);
  }
  
  void render(){
    push();
   stroke(255);
   fill(198,42,33);
   circle(location.x, location.y, 10);
   pop();
  
  }
  
  
}
