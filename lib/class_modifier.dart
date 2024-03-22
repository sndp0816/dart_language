void main() {
  Animal animal = Dog();
  switch (animal) {
    case Cat():
      print("Cat");
      break;
    case Dog():
      print("Dog");
      break;
    case Human():
      print("Human");
      break;
    default:
      print("Unknown");
      break;
  }
}

sealed class Animal {}

class Human implements Animal {}

class Cat implements Animal {}

class Dog implements Animal {}

//type of class modifier in dart

//This declares a sealed class named Animal1. 
//Sealed classes are used to represent restricted class hierarchies. 
//Instances of sealed classes can have subclasses, 
//but all of these subclasses must be declared within the same file where the sealed class is declared.
sealed class Animal1 {}

//In Dart, you don't declare classes as final. 
//Instead, you can declare a class and make it non-extendable by making its constructor const, 
//or simply not providing any constructors for it.
final class Animal2 {}

//Again, this syntax doesn't apply to Dart. 
//You might intend to create an abstract class, 
//in which case you should use the abstract keyword before class.

base class Animal3 {}

// Dart doesn't have interfaces, 
//it has abstract classes which can't be instantiated. 
//Interfaces are implicitly abstract, so you don't need to explicitly mark them as such.

interface class Animal4 {}

//Similar to the previous one, Dart doesn't support this syntax. 
//You would just use either abstract class or interface in Dart.

abstract interface class Animal5 {}

//In Dart, mixins are created using the mixin keyword followed by the mixin name and body. 
//They cannot be directly instantiated but can be applied to classes using the with keyword.

mixin class Animal6 {}