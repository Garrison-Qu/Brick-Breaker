void gameOver(){
  background(255);
  textMode(CENTER);
  textSize(37);
  fill(0);
  text("GAMEOVER, PRESS IF YOU WISH TO RESTART", width/2-400, height/2);
}

void mousePressed(){
  if( mode == gameOver){
    mode = game;
  }
  if (mode == intro){
    mode = game;
  }
}
