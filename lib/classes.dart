//what is classes in dart

//classes in dart are blueprints of objects that we can create and use in our programs to create objects.

//classes in dart are defined using the class keyword.

//class name should be in camel casing

class MyName {
  String name = 'Sandeep';
  int age = 21;
}

//Cookie class
class Cookie {
  String shape = "Circle";
  double size = 10.5;

  //function inside class knowns as method
  void backing() {
    print("Backing has started");
  }

  bool isReady() {
    return true;
  }
}

class Hotel {
  String _branch;
  // int rooms;
  int _total_rooms = 100;
  //constructor in dart
  // Hotel(this.branch, this.rooms);

  Hotel(this._branch, this._total_rooms) {
    print("branch is $_branch and rooms are $_total_rooms");
  }

  bool isRoomAvailable(bool isAvailable) {
    return isAvailable;
  }

  void roomCount(int rooms) {
    _total_rooms = rooms;
  }

  //private variables
  int _id = 10;
  //this is private variable you have to add _ in front of the variable
  //but in class if you declare the variable as private you can you the variable inside the file.
  //but not outside the class and it will not be accessible outside the class

  //getter
  int get total_room => _total_rooms;

  //setter

  set branch(String branch) {
    _branch = branch;
  }

  //how you have to set the value
  // hotel.branch = 'Delhi';

  //static variable

  //static function
}

class Constant {
  //The static getter 'PI' can't be accessed through an instance.
  static double PI = 3.14;
  static String NAME = "Sandeep";

  Constant() {
    print("Constructor is running");
  }

  //only static variable can be accessed if the function is static
  static double giveMeGravity() {
    return PI;
  }
}

void main() {
  //for calling the class you have to create instance of the class first

  //what is instance of class

  //An instance of a class is an object.
  //It is also known as a class object or class instance.
  //As such, instantiation may be referred to as construction.
  //Whenever values vary from one object to another, they are called instance variables.

  // Cookie cookie = Cookie();
  // // print(cookie.shape);

  // // Cookie(); in this method we are calling the constructor again and again
  // print(Cookie().shape);

  // print("the size of cookie is ${Cookie().size} cm");

  // cookie.backing();

  // Hotel hotel = Hotel("Mumbai", 10);
  // // hotel.isRoomAvailable(true);
  // bool isAvailable = hotel.isRoomAvailable(false);
  // print(isAvailable);
  // hotel.roomCount(12);
  // print(hotel.total_room);
  // hotel.branch = 'Delhi';
  // print(hotel._branch);


// //The static getter 'PI' can't be accessed through an instance.
//   Constant constant = Constant();
//   print(constant.PI);
//   print(constant.NAME);

  print(Constant.NAME);

}
