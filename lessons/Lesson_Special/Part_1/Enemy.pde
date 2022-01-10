class Enemy {
 PVector location;
 PVector velocity;
 
 Enemy() {
   location = new PVector(0, random(0,height)); 
   velocity = new PVector(random(-5,5),random(-5,5));
 }
 
  void update(){
   
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
   fill(198,42,33);
   circle(location.x, location.y, 40);
   pop();
 }
}
