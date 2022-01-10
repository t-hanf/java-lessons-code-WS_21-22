import java.util.*;

Player player;
HUD hud;

ArrayList<Enemy> enemies;
ArrayList<Missile> missiles;
ArrayList<Explosion> explosions;

PImage corona;
PImage syringe;
PImage sleight;

int ENEMIES_N = 30;
int MAX_RADIUS = 100;
int score = 0;

String game = "running";

void setup(){
  size(1280,720);
  
  corona = loadImage("corona-virus.png");
  syringe = loadImage("syringe.png");
  sleight = loadImage("sleight.png");
  
  player = new Player(sleight);
  enemies = new ArrayList<Enemy>();
  missiles = new ArrayList<Missile>();
  explosions = new ArrayList<Explosion>();
  
  hud = new HUD(); 
  
  
}

void draw(){
  if(game == "running"){
    background(0);
    if(enemies.size() < ENEMIES_N){
      enemies.add(new Enemy(corona));
    }
    
    for(int i = 0; i < missiles.size(); i++){
     if(missiles.get(i).location.x < 0 ||
       missiles.get(i).location.y < 0 ||
       missiles.get(i).location.x > width ||
       missiles.get(i).location.y > height){
          missiles.remove(i);
          println("Missile deleted");
       }
    }
    
    Iterator<Enemy> itE = enemies.iterator();
    
    while(itE.hasNext()){
       Enemy e = itE.next();
       if(player.hit(e)){
          itE.remove();
          player.health -= 10;
          explosions.add(new Explosion(e.location));         
          continue;
       }
       
       Iterator<Missile> itM = missiles.iterator();
       
       while(itM.hasNext()){
        Missile m = itM.next();
        if(m.hit(e)){
          itE.remove();
          itM.remove();
          score += 25;
          explosions.add(new Explosion(e.location));
          break;
        }
         
       }
    }
    
    
    
    for(Enemy e: enemies){
       e.update();
       e.render();
    }
    
    for(Missile m: missiles){
      m.update();
      m.render();    
    }
    
    Iterator<Explosion> itEx = explosions.iterator();
    
    while(itEx.hasNext()){
      Explosion e = itEx.next();
      if(e.radius >= MAX_RADIUS){
        itEx.remove();
        continue;
      }
      e.update();
      e.render();
    }
    
    player.update();
    
    player.render();

    hud.render();       
    
    if(player.health <= 0){
       game = "over"; 
    }
  }
  
  if(game == "over"){
    
  }
}

void keyPressed(){
  if(key == ' '){
    missiles.add(new Missile(player.location, player.velocity, syringe));
    println("Fire missile");
  }
  
}
