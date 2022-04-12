void game() {
  background(0);
  
  //draw paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  
   //display target
  fill(255);
  stroke(255);
  strokeWeight(5);
  ellipse(ballx, bally, balld, balld);
  
  //moving target
  ballx = ballx + vx;
  bally = bally + vy;
  
  //bouncing
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1; 
  }
  if (bally < balld/2 || bally > height-balld/2) {
   vy = vy * -1; 
  }
  
  //circle collisions
  //left paddle
  if (dist(ballx, bally, leftx, lefty) <= balld/2 + leftd/2) {
    vx = vx * -1;
  }
  
  //right paddle
  if (dist(ballx, bally, rightx, righty) <= balld/2 + rightd/2) {
    vx = vx * -1;
  }
  
  //ball
  circle(ballx, bally, balld);
}

void gameClicks() {
  
}
