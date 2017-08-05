class coin {
  float coinxpos = random(0, width);
  float coinypos = random(0, height);
  
  void show() {
    imageMode(CENTER);
    image(coinImage, coinxpos, coinypos, 40, 40);
  }
  
  void collect() {
    if(dist(coinxpos, coinypos, p.playerxpos, p.playerypos) <= 70) {
      level++;
      coinxpos = random(0, width);
      coinypos = random(0, height);
    }
  }
}