class HUD {
  PVector position = new PVector(25,25);
  Integer hudHeight = 100;
  Integer hudWdith = 300;
  
  void render() {
    push();
    stroke(255); 
    noFill();
    pushMatrix();
    translate(position.x,position.y);
    rect(0,0, hudWdith, hudHeight);
    textSize(32);
    text("Score: "+ score, 30, 45);
    text("Health: " + ship.health, 30, 80);
    popMatrix();
    pop();
  }
  
}
