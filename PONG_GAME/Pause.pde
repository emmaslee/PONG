void pause() {
 theme.pause();
 fill(200);
 rect(640, 500, 150, 80);
 fill(0);
 textSize(50);
 text("►", 700, 560);
}

 
void pauseClicks() {
   if (mouseX > 640 && mouseX < 790 && mouseY > 500 && mouseY < 580) {
    mode = GAME;
  }
}
