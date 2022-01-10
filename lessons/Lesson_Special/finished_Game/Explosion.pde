class Explosion {
 PVector location;
 float radius;
 color eColor;
 
 Explosion(PVector location) {
  this.location = location.copy();
  radius = 0;
  eColor = color(87,224,60);
 }
 
 void wave(){
    radius += 10;
    
 }
 
 void render(){
  push();

  noFill();
  stroke(eColor);
  strokeWeight(5);
  circle(location.x,location.y, radius);
  pop();
 }
  
}
