class Hero {
  float x, y, d, speed, hp1, maxHp;
  int spriteNum;
  int THRESHOLD;
  int count;
  int Timer;
  int health=4; 
  
   Hero() {
    spriteNum = 0;
    THRESHOLD = 10;
    x = width/2;
    y = height/2;
    d = 30;
    speed = 5;
    hp1 = 4;
  }
  
  
  void show(){
     count++;
  if (count == THRESHOLD) {
    count = 0;
    spriteNum++;
  }

  if (spriteNum >= currentaction.size()) {
    spriteNum = 0;
  }

  imageMode(CENTER);
  image(currentaction.get(spriteNum), width/2, height/2);
  }
}
