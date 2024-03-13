void main() {
  // name();

  // int sum = add(10, 20);
  // print(sum);

  // print(fact(5));

  // print(details());

  // print(details().$2);

  // var (name, age, isTrue) = details();
  // print(name);
  // print(age);
  // print(isTrue);

  // int result = sub(a: 20, b: 5);
  // print(result);

//if the function has required paramenter then you can give to value in any sequence eg

  // int result = sub2(b: 20, a: 5, );
  // print(result);

  // final details = data();
  // print(details.name);
  // print(details.age);

  // final data = data2();
  // data();

  // () {
  //   print("Sandeep");
  // }();

  // print(myName());

  // myName2();
}

void name() {
  print("Sandeep");
}

// function with return value
int add(int a, int b) {
  return a + b;
}

//arrow function are used when the function has only one line of return code

String myName() => "Sandeep";

//void statement
void myName2() => print("Rajbhar Sandeep");

//subtraction
//required keyword is used to make sure that the parameter is not null
int sub({required int a, required int b}) => a - b;

//optional parameter with default value
// you have to assign the default value if the parameter is not passed or null value is passed
//eg (c??0) if the value of c is null then it will be 0 else it will be the value of c

int sub2({required int a, required int b, int? c}) => a - b + (c ?? 0);

//named parameter

//you can't add parameter after required parameter
void printName(bool isAdult, {required String name, required int age}) {
  print("My name is $name and age is $age and it can go to bar $isAdult");
}

//factorial

int fact(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * fact(n - 1);
  }
}

(String, int, bool) details() {
  return ("Sandeep", 21, true);
}

({String name, int age}) data() {
  return (name: "Sandeep", age: 21);
}

//function returning the function

Function data2() {
  return () {
    print("Sandeep");
  };
}
