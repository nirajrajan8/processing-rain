Drops d[];

void setup(){
  fullScreen();
  background(0);
  d=new Drops[500];
  for(int i=0;i<500;i++){
    d[i]=new Drops();
  }
}

void draw(){
  fill(0,70);
  rect(0,0,width,height);
  for(int i=0;i<500;i++){
    if(d[i].y>d[i].endPos){
      d[i].end();
    }
    else{
      d[i].display();
    }
  }
}
