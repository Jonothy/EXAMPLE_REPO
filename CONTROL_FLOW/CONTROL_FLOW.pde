// mode 0 is the start screen
// mode 1 is the about page
// mode 3 is the actual work itself
int mode = 1;
// 0 is false;
boolean buttonClicked = false;

void setup(){
  size(400,400);  
}

void draw(){

  if(mode == 1){
    background(255,0,0); 
  }
  else if(mode == 2){
    background(0,255,0);
  }
  else if(mode == 3){
    background(0,0,255);
  }
  
  if(mode == 1){
    if(buttonClicked){
      fill(125, 125, 0);
      rect(100, 100, 50, 50);
      text("CLICKED", 100, 100);
    }
    // buttonClicked is not true
    else{
      fill(0, 125, 125);
      rect(100, 100, 50, 50);
      text("NOT CLICKED", 100, 100);
    }
  }
  
  
  
}

void mousePressed(){
  if(mouseX > 100 && mouseX < 150 &&
    mouseY > 100 && mouseY < 150){
    
      buttonClicked = true;
  }
}

void keyPressed(){
  if(key == '1'){
    mode = 1;  
  }
  else if(key == '2'){
    mode = 2;
  }
  else if(key == '3'){
    mode = 3;
  }
}