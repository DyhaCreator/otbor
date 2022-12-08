class Obj{
  float speed,e=5;
  PVector pos;
  color col=color(0,255,0);
  Obj(float x,float y,float speed){
    pos=new PVector(x,y);
    this.speed=speed;
  }
  void show(){
    fill(speed*40,green(col)-speed*40,blue(col));
    circle(pos.x,pos.y,30);
  }
  void update(){
    PVector min=new PVector(width,height);
    for(int i=0;i<eat.size();i++){
      if(dist(eat.get(i).pos.x,eat.get(i).pos.y,pos.x,pos.y)<dist(0,0,min.x,min.y)){
        min.x=eat.get(i).pos.x-pos.x;
        min.y=eat.get(i).pos.y-pos.y;
      }
      if(dist(eat.get(i).pos.x,eat.get(i).pos.y,pos.x,pos.y)<20){
        eat.remove(i);
        e+=1;
      }
    }
    if(e>12){
      Obj a = new Obj(pos.x+random(0,30),pos.y+random(0,30),abs(speed+random(0,1)));
      obj.add(a);
      e-=10;
    }
    if(min.x>0){
      pos.x+=speed;
    }
    else if(min.x<0){
      pos.x-=speed;
    }
    if(min.y>0){
      pos.y+=speed;
    }
    else if(min.y<0){
      pos.y-=speed;
    }
    e-=0.02*speed;
  }
}

class Eat{
  PVector pos;
  color col=color(random(0,255),random(0,255),random(0,255));
  Eat(float x,float y){
    pos=new PVector(x,y);
  }
  void show(){
    fill(col);
    circle(pos.x,pos.y,10);
  }
}
