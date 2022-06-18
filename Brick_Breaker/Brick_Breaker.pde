import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Brick variables
int[] x;
int[] y;
boolean[] alive;
int brickd;
int i = 0;
int n;
int tempy, tempx;
int hit = 0;

//modes
int mode;
final int game = 1;
final int intro = 0;
final int gameOver = 2;


//color variables
color red = #FA0000;
color yellow = #FFE705;
color green = #05FF30;
color blue = #05BEFF;

//key variables
boolean left = false;
boolean right = false;

//other variables
int lives = 5;

//minim
Minim minim; 
AudioPlayer bounce;

void setup(){

  background(255);
  fill(0);
 
  size(800,600);
  brickd = 50;
  n = 30;
  x = new int[n];
  y = new int[n];
  alive = new boolean [n];
  ellipseMode(CENTER);
  tempx = 300/11 + 25;
  tempy = 50;
  mode = 0;
  int i=0;
  while (i<n){
    alive[i]=true;
    i++;
  }
  minim = new Minim(this);
  bounce = minim.loadFile("bounce.wav");
  

  
}

void draw(){
  
  
  if (mode == game){
    game();
  }else if (mode==intro){
    intro();
  }else if (mode == gameOver){
    gameOver();
  }
  
  
}
