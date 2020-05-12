class EndScene {
  String gameOverText, buttonText, pointsText;
  int buttonX, buttonY, buttonW, buttonH;


  EndScene(int points) {
    this.gameOverText = "Game Over!";
    this.buttonText = "Retry";
    this.pointsText = "Your final Score is " + points;
    this.buttonW = 200;
    this.buttonH = 100;
    this.buttonX = width/2 - this.buttonW/2;
    this.buttonY = height/2 - this.buttonH/2;
  }

  void drawEndScene() {
    //OVERLAY
    fill(#F73939);
    rect(0, 0, width, height);
    rect(buttonX, buttonY, buttonW, buttonH);

    //TEXT
    stroke(255);
    fill(255);
    textSize(60);
    text(this.gameOverText, width/3, height/4);

    //BUTTON
    fill(0);
    stroke(200);
    rect(buttonX, buttonY, buttonW, buttonH);
    fill(200);
    text(buttonText, buttonX+25, buttonY+70);
    
    //SCORE
    stroke(255);
    fill(255);
    textSize(30);
    text(pointsText, width/3, height - height/4);
  }

  boolean mouseOverButton() {
    return (mouseX > buttonX 
      && mouseX < buttonX + buttonW
      && mouseY > buttonY
      && mouseY < buttonY + buttonH);
  }
}
