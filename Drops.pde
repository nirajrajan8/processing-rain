class Drops{
  
  float x,y,speed;
  float ellipseX, ellipseY, endPos;
  color c; 
  Drops(){
    init();
  }
  
  void init(){
    x=random(width);
    y=random(-300,0);
    speed=random(1,4)*2.5;
    c=color(random(255), random(255), random(255));
    ellipseX=0;
    ellipseY=0;
    endPos=height+100 - random(height*0.4);
  }
  
  void update(){
    y+=speed;
  }
  
  void display(){
    fill(c);
    noStroke();
    rect(x,y,2,15);
    update();
  }
  
  void end(){
    stroke(c);
    noFill();
    ellipse(x,y,ellipseX, ellipseY);
    
    ellipseY+=speed * 0.2;
    ellipseX+=speed * 0.5;
    
    if(ellipseY>50){
      init();
    }
  }
}
