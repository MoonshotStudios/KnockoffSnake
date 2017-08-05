class object {
  float objectxpos = random(0, width);
  float objectypos = random(0, height);
  float objectxspeed = 0;
  float objectyspeed = 0;
  float savedobjectxspeed;
  float savedobjectyspeed;
  void show() {
    imageMode(CENTER);
    image(enemyImage, objectxpos, objectypos, 50, 50);
  }
  void move() {
    objectxpos += objectxspeed;
    objectypos += objectyspeed;
    if(objectxpos >= width) {
      objectxspeed = random(-5, 0);
      objectyspeed = random(-5, 5);
    }
    if(objectxpos <= 0) {
      objectxspeed = random(0, 5);
      objectyspeed = random(-5, 5);
    }
    if(objectypos >= height) {
      objectxspeed = random(-5, 5);
      objectyspeed = random(-5, 0);
    }
    if(objectypos <= 0) {
      objectxspeed = random(-5, 5);
      objectyspeed = random(0, 5);
    }
  }
}