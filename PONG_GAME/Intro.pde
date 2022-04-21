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
 
  
  //1 PLAYER Button
  //tactile - 1 PLAYER button
  if (mouseX > 80 && mouseX < 380 && mouseY > 400 && mouseY < 500) {
    fill(197, 232, 230);
  } else {
    fill(200);
  }
  rect(80, 400, 300, 100);
  fill(0);
  textSize(35);
  text("1 PLAYER", 150, 465);
  
  //2 PLAYER Button
  //tactile - 2 PLAYER button
  if (mouseX > 450 && mouseX < 700 && mouseY > 400 && mouseY < 500) {
    fill(197, 232, 230);
  } else {
    fill(200);
  }
  rect(420, 400, 300, 100);
  fill(0);
  textSize(35);
  text("2 PLAYER", 490, 465);
}

void introClicks() {
 if (mouseX > 80 && mouseX < 380 && mouseY > 400 && mouseY < 500) {
   mode = GAME;
   AI = true;
 }
 if (mouseX > 450 && mouseX < 700 && mouseY > 400 && mouseY < 500) {
   mode = GAME;
   AI = false;
 }
}
