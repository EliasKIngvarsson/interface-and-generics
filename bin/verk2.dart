//segjum að við erum að búa til tölvuleik skotleikur og við getum hoppað inn í faratæki

class IGoCanForward{
  void GoForward(){
  }
}

//ef við notum implemets þá er þetta interface ef við notum extence þá er þetta erfðir Notum I fyrir interface og notum alltaf interface

class MotorCicle implements IGoCanForward{
  int maxspeed=60;
  int wheels= 2;
  void GoForward(){
    print('Pleyer on a motorcicle going at $maxspeed');
  }
}
class Car extends IGoCanForward{
  int maxspeed =40;
  int wheels=4;
  void GoForward(){
    print('Plaeyer on a car going at $maxspeed');
  }
}
class Closet{
  int width;
  int height;
}

void main(List<String>arguments){
  var Player = new Car();
  //Button_W(Player);
  W_pressed(Player);
}

  void W_pressed(IGoCanForward object){
    object.GoForward();
  }

void Button_W(var obj){
  if(obj is MotorCicle){
    obj.GoForward();
  }
  else if (obj is Car){
    obj.GoForward();
  }
}