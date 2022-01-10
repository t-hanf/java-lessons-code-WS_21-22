class Ship{
  
 PVector location;
 PVector velocity;
 PVector acceleration;
 Integer health = 100;
 PImage sprite;
 
 float topspeed;
 
 Ship(PImage sprite) {
   
   this.sprite = sprite;
   
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    topspeed = 10; 
 }
 
 boolean hit(Enemy e){
  
   if(location.dist(e.location) <= 50){
    return true;
   }
   return false;
   
 }
 
 void update() {
   
  PVector mouse = new PVector(mouseX,mouseY);
  acceleration = PVector.sub(mouse,location);
  
  acceleration.setMag(0.4);
  
  velocity.add(acceleration);
  velocity.limit(topspeed);
  location.add(velocity);
  
  if(location.x < 0) {
     location.x = width - 1;
   }
   if(location.y < 0) {
     location.y = height - 1;
   }
   if(location.y > height) {
     location.y = 1;
   }
   if(location.x > width) {
     location.x = 1;
   }
   
 }
 
 void display() {
     push();
     pushMatrix();
    stroke(255);
    strokeWeight(2);
    fill(127);
    //ellipse(location.x,location.y,48,48);
    translate(location.x,location.y);
    rotate(radians(      90));
    rotate(acceleration.heading());
    image(sprite, -25,-25, 50, 50);
    popMatrix();
    //line(location.x,location.y,mouseX,mouseY);
    pop();
 }
  
  
}
