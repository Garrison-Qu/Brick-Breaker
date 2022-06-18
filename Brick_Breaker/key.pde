void keyPressed(){
  if (key == 'A' || key == 'a' || keyCode == LEFT){
    left = true;
    right = false;
    println(left);
  }else if (key == 'D' || key == 'd' || keyCode == RIGHT){
    right = true;
    left = false;
    println(right);
  }
  
}

void keyReleased(){
  if (key == 'D' || key == 'd' || keyCode == RIGHT){
    right = false;
  }else if (key == 'A' || key == 'a' || keyCode == LEFT){
    left = false;
  }
  
}
