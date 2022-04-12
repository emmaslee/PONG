void intro() {
  
   // Game Title
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("PONG  GAME", 200, 300);
 
  //Start Button
  //tactile - Start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 400, 200, 100);
  fill(0);
  textSize(30);
  text("START", 350, 450);
  
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
}
