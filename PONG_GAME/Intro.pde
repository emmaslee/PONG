void intro() {
  theme.play();
  
  //background
  fill(255, 170, 255);
  rect(0, 0, 400, 600);
  fill(154, 234, 111);
  rect(400, 0, 800, 600);
  
   // Game Title
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("PONG  GAME", 180, 300);
 
  //Start Button
  //tactile - Start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    fill(197, 232, 230);
  } else {
    fill(200);
  }
  rect(300, 400, 200, 100);
  fill(0);
  textSize(30);
  text("START", 350, 460);
  
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
 
}
