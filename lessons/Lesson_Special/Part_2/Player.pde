class Player {
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 PImage sprite;
 
 float topspeed = 10;
 
 Integer health = 100;
 
 int SIZE_X = 40;
 int SIZE_Y = 40;
 
 Player(PImage sprite){
  location = new PVector(width/2, height/2);
  velocity = new PVector(0,0);
  acceleration = new PVector(0,0);
  
  this.sprite = sprite;
  
 }
 
 boolean hit(Enemy e){
   return (location.dist(e.location) <= 30);
   
 }
 
 void update(){
   
   PVector mouse = new PVector(mouseX, mouseY);
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
   if(location.x > width) {
    location.x = 1; 
   }
   if(location.y > height) {
    location.y = 1; 
   }
   
 }
 
 void render(){
   push();
   pushMatrix();
   stroke(255);
   fill(127);
   translate(location.x, location.y);
   rotate(radians(90));
   rotate(acceleration.heading());   
   //circle(location.x, location.y, 20);
   image(sprite, -(SIZE_X/2) , -(SIZE_Y/2), SIZE_X, SIZE_Y);  
   popMatrix();
   pop();
 }
  
  
}
