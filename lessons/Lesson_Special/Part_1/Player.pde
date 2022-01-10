class Player {
 PVector location;
 PVector velocity;
 PVector accleration;
 
 float topspeed = 10;
 
 Integer health = 100;
 
 Player(){
  location = new PVector(width/2, height/2);
  velocity = new PVector(0,0);
  accleration = new PVector(0,0);
  
 }
 
 boolean hit(Enemy e){
   return (location.dist(e.location) <= 30);
   
 }
 
 void update(){
   
   PVector mouse = new PVector(mouseX, mouseY);
   accleration = PVector.sub(mouse,location);
   
   accleration.setMag(0.4);
   
   velocity.add(accleration);
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
   stroke(255);
   fill(127);
   
   circle(location.x, location.y, 20);
   pop();
 }
  
  
}
