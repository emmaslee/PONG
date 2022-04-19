  void gameover() {
    
    background(152, 18, 18);
    
    fill(0);
    textSize(60);
    text("GAMEOVER", 250, 150);
    

  if (leftscore > rightscore) {
    
    rect(200, 250, 400, 100);
    textSize(35);
    fill(255, 249, 49);
    text("LEFT WINS", 300, 310);
 } else {     

    
    rect(200, 250, 400, 100);
    textSize(35);
    fill(255, 249, 49);
    text("RIGHT WINS", 300, 310);
 }
   
  //Return to Game button
  //tactile - Return to Game button
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 400, 200, 100);
  fill(0);
  textSize(30);
  text("RETURN", 340, 460); 
}

void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    mode = INTRO;
  }
}
