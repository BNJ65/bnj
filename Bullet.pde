class Bullet {
  float x, y, vy;
  float size;
  
  Bullet(Ship playerShip) {
    this.x = playerShip.x;
    this.y = playerShip.y - 15;
    this.vy = -10;
    this.size = 10;
  }
  
  void drawBullet() {
    //color?
    fill(255, 0, 0);
    ellipse(x, y, size, size);
    y+=vy;
  }
    
    
}
