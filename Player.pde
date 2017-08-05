class player {
  float playerxpos = random(0, width);
  float playerypos = random(0, height);
  float playerSpeed = 0;
  
  void show() {
    imageMode(CENTER);
    image(playerImage, playerxpos, playerypos, 100, 100);
  }
  
  void move() {
    if(keyPressed) {
      if(key == 'w') {
        playerypos -= playerSpeed;
      }
      if(key == 's') {
        playerypos += playerSpeed;
      }
      if(key == 'a') {
        playerxpos -= playerSpeed;
      }
      if(key == 'd') {
        playerxpos += playerSpeed;
      }
    }
  }
  
  void pause() {
    if(keyPressed) {
      if((key == 'P' || key == 'p') && paused == false) {
        paused = true;
        for(int i = 0; i < o.length; i++) {
          o[i].savedobjectxspeed = o[i].objectxspeed;
          o[i].savedobjectyspeed = o[i].objectyspeed;
          o[i].objectxspeed = 0;
          o[i].objectyspeed = 0;
          key = ' ';
        }
      }
      
      if((key == 'P' || key == 'p') && paused == true) {
        paused = false;
        for(int i = 0; i < o.length; i++) {
          o[i].objectxspeed = o[i].savedobjectxspeed;
          o[i].objectyspeed = o[i].savedobjectyspeed;
          key = ' ';
        }
      }
    }
  }
  
  void restart() {
    if(keyPressed) {
      if(key == 'R' || key == 'r') {
        setup();
      }
    }
  }
  
  void offscreen() {
    if(playerxpos < -50) {
      playerxpos = width + 50;
    }
    
    if(playerxpos > width + 50) {
      playerxpos = -50;
    }
    
    if(playerypos < -50) {
      playerypos = height + 50;
    }
    
    if(playerypos > height + 50) {
      playerypos = -50;
    }
  }
}