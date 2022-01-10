import java.util.*;

Ship ship;
ArrayList<Enemy> enemies;
ArrayList<Missile> missiles;
ArrayList<Explosion> explosions;
PImage corona;
PImage syringe;
PImage sleight;
String game = "running";
Integer score = 0;
HUD hud;

int ENEMIES_N = 30;

void setup(){
  size(1280,720);
  
  enemies = new ArrayList<Enemy>();
  missiles = new ArrayList<Missile>();
  explosions = new ArrayList<Explosion>();
  hud = new HUD();
  
  corona = loadImage("corona-virus.png");
  syringe = loadImage("syninge.png");
  sleight = loadImage("sleight.png");
  
  ship = new Ship(sleight);
  
  enemies.add(new Enemy(500,100,0,5, corona));
  enemies.add(new Enemy(500,100,5,0, corona));
  enemies.add(new Enemy(500,100,5,4, corona));
}

void draw(){
  
  if(game == "running"){
  background(0);
  
  if(enemies.size() < ENEMIES_N  && 10 > int(random(0,100))){  
        
       enemies.add(new Enemy(1, random(1, height), random(-5,5), random(-5, 5), corona));       
 
  }
  
  
  for(Enemy e: enemies){
     e.update();
     e.render();
  }
  
  for(int i = 0; i < missiles.size(); i++) {
   if(missiles.get(i).location.x < 0 
     || missiles.get(i).location.y  < 0
     || missiles.get(i).location.x > width
     || missiles.get(i).location.y > height){
      missiles.remove(i); 
      println("Missile delete");
     } 
  }
  
  for(Missile m: missiles) {
   m.update();
   m.render(); 
  }
  
  Iterator<Enemy> itE = enemies.iterator();
  
  
  while(itE.hasNext()){
      Enemy e = itE.next();

    
      if(ship.hit(e)){
       itE.remove();
       println("Enemie delete");
       ship.health -= 10;
       explosions.add(new Explosion(ship.location));
       println("Ship health: " + ship.health);
       continue;
      }
       
       Iterator<Missile> itM = missiles.iterator();
               
       while(itM.hasNext()){
       Missile m = itM.next();
       
         if(m.hit(e)){
            println("boom");
            itM.remove();
            itE.remove();
            score += 25;
            explosions.add(new Explosion(m.location));
            break;
         }
     }
  }
  
  Iterator<Explosion> itEx = explosions.iterator();
  
  while(itEx.hasNext()){
   Explosion e = itEx.next();
    if(e.radius >= 100){
     itEx.remove();
     continue;
    }
    
    e.wave();
    e.render();          
    
  }
  
  ship.update();
  
  ship.display();
  
  hud.render();
  
    if(ship.health <= 0) {
      game = "over";
    }
  }
  
  if(game == "over") {
    text("Game Over", width/2, height/2);
    text("Score: " + score, width/2, height/2 -30);
    
  }
  
  if(game == "pause") {
    text("Pause!", width/2, height/2);
  }
}

void keyPressed(){
 
  if(key == ' '){
    missiles.add(new Missile(ship.location, ship.acceleration, syringe  ));
    println("Fire missile");
    
  }else if(key == ENTER) {
     if(game == "pause"){
       game = "running";
     } else {
    game = "pause"; 
  }
}
  
}
