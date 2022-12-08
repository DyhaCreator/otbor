ArrayList<Obj>obj=new ArrayList<Obj>();
ArrayList<Eat>eat=new ArrayList<Eat>();
float frame=0;
void setup(){
  frameRate(1000);
  Obj a=new Obj(random(0,width),random(0,height),1);
  obj.add(a);
  size(1080,720);
}
void draw(){
  background(200);
  Eat b = new Eat(random(0,width),random(0,height));
  eat.add(b);
  for(int i=0;i<eat.size();i++){
    eat.get(i).show();
  }
  for(int i=0;i<obj.size();i++){
    obj.get(i).show();
    obj.get(i).update();
    if(obj.get(i).e<=0){obj.remove(i);}
  }
  if(frame%100==0){
    println(obj.size());
  }
  frame++;
}
