import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Pong!
//Emma Lee
//2-4
//April 11 2022

//mode framework

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld; //ball
float paddlex, paddley, paddled; //paddle
boolean AI;

//paddle image variables
PImage soccer;

//scoring
int leftscore, rightscore, timer;

//target variables
float vx, vy; //target velocity

//keyboard variables
boolean wkey, skey, upkey, downkey;

//sound variables
Minim minim; 
AudioPlayer theme, coin, bump, gameover;

void setup() {
  size(800, 600);
  mode = INTRO;
  
  
  
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  
  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
  //paddle images
  soccer = loadImage("soccer.png");
 
  
}

void draw() {
  if (mode == INTRO) { 
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error:" + mode);
  }
}
