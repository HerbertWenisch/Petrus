Cloud cloud;

void setup(){
  size (800, 800);
  background(255);
  cloud = new Cloud();
}

void draw(){
  background(255);
  cloud.display();
  cloud.move(1);
}  
  
  
