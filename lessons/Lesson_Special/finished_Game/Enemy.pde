class Enemy {
 PVector location;
 PVector velocity;
 PImage sprite;
 
 int SIZE_X = 40;
 int SIZE_Y = 40;
 
 Enemy(float startX, float startY, float velX, float velY, PImage sprite){
  
   location = new PVector(startX,startY);
   velocity = new PVector(velX,velY);
   this.sprite = sprite;
 }
 
 void update() {
  
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
 
 void render() {
   push();
    stroke(255);
    strokeWeight(2);
    fill(127);
    //ellipse(location.x,location.y,20,20);
    image(sprite, location.x-(SIZE_X/2),location.y-(SIZE_Y/2), SIZE_X,SIZE_Y);
    pop();
 }
  
}
