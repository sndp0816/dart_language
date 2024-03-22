//object oriented programming
//1. polymorphism
//2. inheritance
//3. encapsulation
// getter and setter is known as encapsulation
//4. abstraction

// what is polymorphism
//poly means many
//morph means form

//defination:

void main() {
  // final date = DateTime.now();

  // print(date);

//1. polymorphism
  // Cat cat = Cat();
  // cat.sound();
  // Dog dog = Dog();
  // dog.sound();

// abstraction
//abstract class hide the internal details and show only the functionality
  Animal animal1 = Cat();
  animal1.sound();
  Animal animal2 = Dog();
  animal2.sound();
}

abstract class Animal {
  void sound() {
    print("Animal makes sound");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat makes sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog makes sound");
  }
}
