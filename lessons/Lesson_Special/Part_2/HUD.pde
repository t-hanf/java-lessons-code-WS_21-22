class HUD {
  PVector position = new PVector(25,25);
  Integer hudHeight = 100;
  Integer hudWidth = 300;
  
  void render() {
   push();
   pushMatrix();
   stroke(255);
   noFill();
   translate(position.x, position.y);
   rect(0,0, hudWidth, hudHeight);
   textSize(32);
   text("Score: "+score, 30, 45);
   text("Health: "+player.health,30, 80);
   popMatrix();
   pop();
  }
}
