void main() {
  bool isAllowed = true;

//!isAllowed  change the value to false if it's true then change it to false
  // print(!isAllowed);

  // int age = 21;

  // if (age >= 20) {
  //   print('eligible');
  // } else if (age == 17 || age == 18) {
  //   print('may be eligible');
  // } else {
  //   print('not eligible');
  // }

  //Ternary Operator
  String name = 'Sandeep';

  String result = name.startsWith('S') ? 'Yes' : 'No';
  print(result);

  //Switch case

  int num = 30;

  switch (num) {
    case 10:
      print('10');
      break;
    case 20:
      print('20');
      break;
    default:
      print('default');
  }
}
