void game() {
  theme.play();
  background(0);
  
  //pause button
  stroke(0);
  fill(200);
  rect(640, 500, 150, 80);
  fill(0);
  textSize(50);
  text( "||" , 700, 560);
  
  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);
  
  //scoreboard
  textSize(50);
  fill(255, 170, 255);
  text(leftscore, width/4, 100);
  fill(154, 234, 111);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;

  //draw paddles
  fill(255, 170, 255);
  circle(leftx, lefty, leftd);
  fill(154, 234, 111);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
  if (AI == false) {
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  } else {
    
    if ( bally > righty) righty = righty + 2;
    if (

  }
 
  
  lefty = max (lefty, 0);
  lefty = min (lefty, 600);
  righty = max (righty, 0);
  righty = min (righty, 600);

  //ball
  fill(49, 0, 252);
  circle(ballx, bally, balld);
  
  //display target
  fill(255);
  stroke(255);
  strokeWeight(5);
  ellipse(ballx, bally, balld, balld);

  //moving ball
  if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
  }
  
  //scoring
  if (ballx < 0) {
    rightscore = rightscore + 1;
    bump.rewind();
    bump.play(); 
    ballx = width/2;
    bally = height/2;
    timer = 100; 
  } else {
     if (rightscore == 3) mode = GAMEOVER;
  }
   if (ballx > 800) {
    leftscore++;
    bump.rewind();
    bump.play(); 
    ballx = width/2;
    bally = height/2;
    timer = 100;
      } else {
     if (leftscore == 3) mode = GAMEOVER;
  }
    
  

  //bouncing
  
  if (bally <= balld/2 || bally > height-balld/2) {
    vy = -vy;
  }

 
  //circle collisions
  //left paddle
  if (dist(ballx, bally, leftx, lefty) <= balld/2 + leftd/2) {
     vx = (ballx - leftx)/20; 
    vy = (bally - lefty)/20;
  }

  //right paddle
  if (dist(ballx, bally, rightx, righty) <= balld/2 + rightd/2) {
     vx = (ballx - rightx)/20;
    vy = (bally - righty)/20;
  }

  
}

void gameClicks() {
 if (mouseX > 640 && mouseX < 790 && mouseY > 500 && mouseY < 580) {
    mode = PAUSE;
 }
}
