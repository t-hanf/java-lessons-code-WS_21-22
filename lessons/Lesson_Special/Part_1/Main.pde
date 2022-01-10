import java.util.*;

Player player;

ArrayList<Enemy> enemies;
ArrayList<Missile> missiles;

int ENEMIES_N = 30;
int score = 0;

String game = "running";

void setup(){
  size(1280,720);
  player = new Player();
  enemies = new ArrayList<Enemy>();
  missiles = new ArrayList<Missile>();
  
  
}

void draw(){
  if(game == "running"){
    background(0);
    if(enemies.size() < ENEMIES_N){
      enemies.add(new Enemy());
    }
    
    Iterator<Enemy> itE = enemies.iterator();
    
    while(itE.hasNext()){
       Enemy e = itE.next();
       if(player.hit(e)){
          itE.remove();
          player.health -= 10;
          continue;
       }
       
       Iterator<Missile> itM = missiles.iterator();
       
       while(itM.hasNext()){
        Missile m = itM.next();
        if(m.hit(e)){
          itE.remove();
          itM.remove();
          score += 25;
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
    
    player.update();
    
    player.render();
    
    if(player.health <= 0){
       game = "over"; 
    }
  }
  
  if(game == "over"){
    
  }
}

void keyPressed(){
  if(key == ' '){
    missiles.add(new Missile(player.location, player.velocity));
    println("Fire missile");
  }
  
}
