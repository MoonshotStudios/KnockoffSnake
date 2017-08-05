PImage playerImage;
PImage coinImage;
PImage enemyImage;

boolean paused;
boolean startgame;

player p;
coin c;
object[] o = new object[255];
int level;

void setup() {
  fullScreen();
  frameRate(30);
  startgame = false;
  paused = false;
  playerImage = loadImage("PlayerImage.jpg");
  coinImage = loadImage("CoinImage.jpg");
  enemyImage = loadImage("EnemyImage.jpg");
  p = new player();
  c = new coin();
  for(int i = 0; i < o.length; i++) {
    o[i] = new object();
  }
  level = 1;
}

void draw() {
  background(255);
  if(startgame == false) {
    text("Press 'F' to start", width/2, height/2);
    if(keyPressed) {
      if(key == 'F' || key == 'f') {
        startgame = true;
        p.playerSpeed = 5;
        for(int i = 0; i < o.length; i++) {
          o[i].objectxspeed = random(-5, 5);
          o[i].objectyspeed = random(-5, 5);
        }
      }
    }
  }
  textAlign(CENTER);
  textSize(50);
  fill(0);
  textSize(50);
  textSize(40);
  text(level, 80, 40);
  text("Knockoff Snake", width-325, 40);
  text("Remastered", width-325, 80);
  c.show();
  c.collect();
  p.show();
  p.move();
  for(int i = 0; i < level; i++) {
    o[i].show();
    o[i].move();
  }
  for(int i = 0; i < level; i++) {
    if(dist(o[i].objectxpos, o[i].objectypos, p.playerxpos, p.playerypos) <= 75) {
      textSize(50);
      textAlign(CENTER);
      fill(0);
      text("Game over", width/2, height/2);
      text("Press 'R' to restart", width/2, height/2 + 55);
      p.playerSpeed = 0;
      o[i].objectxspeed = 0;
      o[i].objectyspeed = 0;
    }
  }
  if(level > 255) {
    textAlign(CENTER);
    textSize(100);
    fill(0);
    text("You win!", width/2, height/2);
  }
  p.pause();
  p.restart();
  p.offscreen();
}