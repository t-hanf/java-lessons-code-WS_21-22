class Missile {
 
  PVector location;
  PVector velocity;
  PImage sprite;
  
  Missile(PVector loc, PVector vel, PImage sprite){
   location = loc.copy();
   velocity = vel.copy();
   velocity.setMag(15);
   this.sprite = sprite;
    
  }
  
  boolean hit(Enemy e){
  
   if(location.dist(e.location) <=  40){
    return true;
   }
   return false;
   
 }
  
  void update(){
   
    location.add(velocity);
    
  }
  
  void render() {
    push();
    pushMatrix();
    stroke(255);
    strokeWeight(2);
    fill(127);
    //ellipse(location.x,location.y,10,10);
    translate(location.x, location.y);
    rotate(radians(135));
    rotate(velocity.heading());
    image(sprite,-15 , -15, 30,30);
    popMatrix();
    pop();
  }
  
}
