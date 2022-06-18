int px = 400;
int bx = 400;
int by = 400;
float vx = random(-0.5, 0.5);
float vy = 1;


void game(){
background(255);
println(vy);
bx += vx;
by += vy;
textSize(32);
textMode(CORNER);
text("Lives:" + lives, 20, 30);
  
  
  
  //loop
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    
    tempx += 77;
    if( alive[i] == true){
      manageBrick(i);
    }
  i++;
  }
  
      if (bx <= 7.5 || bx >= 792.5){
    vx *= -1;
  }
  if (by <= 7.5){
    vy *= -1;
  }

  if (by >= height + 15){
    bx = 400;
    by = 400;
    vx = random(-0.5, 0.5);
    vy = 1;
    px = 400;
    lives -= 1;
  }
    


  tempy = 50;
  
  if (left == true){
    px -= 5;
  }else if (right == true){
    px += 5;
  }
  
  fill(yellow);
  noStroke();
  ellipse(px, height, 100, 100);
  ellipse(bx, by, 15, 15);
  
  
  
  if (lives <= 0 || hit >= 30){
    mode = gameOver;
  }
}

void manageBrick(int i){
  
  if (y[i] == 50) fill(red);
    
    if (y[i] == 110) fill(green);
      
    if (y[i] == 170) fill(blue);
    noStroke();
    circle(x[i], y[i], brickd);
    
    
    
    if ( tempx > 772 ) {
      tempy += 60;
      tempx = 52;
    }
      
 
  if (dist(bx, by, x[i], y[i]) <= 35){
    vx = (bx - x[i])/10;
    vy = (by - y[i])/10;
    alive[i] = false;
    bounce.rewind();
    bounce.play();
    hit++;
  }
  if (dist(bx, by, px, height) <= 60){
    vx = (bx - px)/10;
    vy = (by - height)/10;
    bounce.rewind();
    bounce.play();
  }
}
