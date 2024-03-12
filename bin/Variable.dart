//Variable in dart

import 'package:test/test.dart';

void main() {
  // datatype variable_name = value;

  //all the variable name must be camel casing
  // eg String myName = "Sandeep";

  //int datatype you can assign any number
  int a = 10;

  //double datatype you can assign fraction number
  double b = 10.5;

  //String datatype you can assign any text
  String name = "Sandeep";

  //boolean datatype you can assign true or false
  bool isTrue = true;

  //dynamic datatype you can assign any data type
  dynamic myName = 'Sandeep';

  // print(isTrue);

  // Operator in dart

  // + - * / %

  int firstValue = 10;
  int secondValue = 20;

  // print(firstValue +=30);
  // print(secondValue-=50);
  // print(firstValue/secondValue);
  // print(firstValue%secondValue);

  String firstName = 'Sandeep';
  //print(firstName);

  //Use interpolation to compose strings and values.
  //Try using string interpolation to build the composite
  // firstName = firstName + ' Rajbhar';
  // print(firstName);

// String interpolation in dart this is how do it
  //if you put curley bracket then it will provide funcionality like lenght, upper case, lower case etc.
  //firstName = '${firstName} Rajbhar';

  firstName = '$firstName Rajbhar';
  //print(firstName);

  // consider you have $ in your string and you want to print it in your string

  firstName = '\$ firstName';
  // print(firstName);

// if you want to print big strings with multiple line then this method will be use
  String bigString = '''
  I am sandeep

  rajbhar ''';

  // print(bigString);

  // we can also get new line in string by using \n
  String str1 = 'my name is \nSandeep Rajbhar';

  // print(str1);

  //var final const in dart

  //it is define as a string and it will not change into int or double or bool
  // var name1 = 'Sandeep';
  // name1 = '$name1 Rajbhar';
  // print(name1);

  //datatype can not be changed once assigned
  var value1 = 10;

  // final can not change once assigned
  final value2 = 10;

  // const can not be reassigned once assigned eg Pi or E
  const value3 = 10;

  // print(value1);
  // print(value2);
  // print(value3);

  print('------------------');

  //final is a run time constant

  final time = DateTime.now();
  // print(time);

  //const is a compile time constant

  const pi = 3.14;
  // print(pi);

  //Optional Variable
  //String / int / bool

//you can use null value by adding ? at the end of datatype. without ? it will give error
  // ? means optional variable
  String? name1;

  print(name1);

  name1 = 'Sandeep';
  print(name1.length);

  name1 = 'hello';
  print(name1?.length ?? 1);

  // ? this mean you are asking the dart compiler if it is null or not if it is null then it will give 1
  //! this mean you are forcing the dart compiler this is null value
}
