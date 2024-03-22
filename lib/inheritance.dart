//dart support inheritance in dart

//but dart doesn't support multiple inheritance

class Vehicle {
  int speed = 100;
  bool isEngineWorking = true;
  bool isBrakeWorking = true;

  void acclerator() {
    speed += 40;
  }
}

class Car extends Vehicle {
  int speed = 40;
  int wheel = 4;
  bool sunRoof = true;

  @override
  void acclerator() {
    speed += 60;
  }
}

class Vehicle2 {
  bool isEngineWorking = true;
  bool isBrakeWorking = true;
  int wheel = 4;
}

class Car2 extends Vehicle2 {
  @override
  bool isEngineWorking = false;
  @override
  bool isBreakWorking = false;
  @override
  int wheel = 6;
}

abstract class Vehicle3 {
  void acclerator();
}

class Car3 implements Vehicle3 {
  @override
  void acclerator() {
    print('acclerating...');
  }
}

void main() {
  //if you declare the variable as dynamic then you can assign any data type or
  //any method that is available in that data type

  dynamic Name = 'Mustang';
  //but if you declare the dynamic to string or other datatype then only you can use the methods that are available in string
  // print((Name as String).toUpperCase());

  Car car1 = Car();

  // print(car1.speed);
  // car1.acclerator();
  // print(car1.speed);

  final car3 = Car3();

  car3.acclerator();
}
