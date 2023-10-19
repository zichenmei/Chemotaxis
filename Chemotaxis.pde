Bacteria [] colony;
void setup() { 
  size(600, 600);
  colony=new Bacteria[50];
  for (int i=0; i<colony.length; i++) {
    colony[i]=new Bacteria();
  }
}   
void draw() { 
  background(0);
  for (int i=0; i<colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}  

void mousePressed() {
  for (int i=0; i<colony.length; i++) {
    colony[i]=new Bacteria();
  }
}
class Bacteria {
  int myX, myY, myColor;
  Bacteria() {
    myColor=color((int)(Math.random()*255), 
      (int)(Math.random()*255), 
      (int)(Math.random()*255));
    myX=(int)(Math.random()*700)-50;
    myY=(int)(Math.random()*700)-50;

  }
  void move() {
    if (mouseX>myX) {
      myX=myX+(int)(Math.random()*5)-1;
    } else {
      myX=myX+(int)(Math.random()*5)-3;
    }
    if (mouseY>myY) {
      myY=myY+(int)(Math.random()*5)-1;
    } else {
      myY=myY+(int)(Math.random()*5)-3;
    }
    
  }
  void show() {
    noFill();
    fill(myColor);
    ellipse(myX, myY, 15, 15);
  }
} 
