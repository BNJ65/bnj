class Asteroid {
  float size, x, y;

  int vy = 5; //speed of asteroid

  Asteroid(float size) {
    this.size = size;
    this.x = random(width);
    this.y = -size;
  }

  void drawAsteroid() {
    fill(150);
    stroke(150);
    ellipse(x, y, size, size);
    y+=vy;
  }

  boolean checkCollision(Object other) {
    if (other instanceof Ship) {
      Ship playerShip = (Ship) other;
      float apothem = 10 * tan(60);
      float distance = dist(x, y, playerShip.x, playerShip.y-apothem);
      if (distance < size/2 + apothem + 10) {
        //background(255, 0, 0);
        fill(255, 0, 0, 100);
        rect(0, 0, width, height);
        fill(255);
        
        return true;
      }
    } else if (other instanceof Bullet) {
      Bullet bullet = (Bullet) other;
      float distance = dist(x, y, bullet.x, bullet.y); 
      println(distance);
      if (distance <= size/2 + bullet.size/2 ) {
        fill(0, 255, 0, 100);
        rect(0, 0, width, height);
        fill(255);
        
        return true;
      }
    }
    return false;
    
  }
}
