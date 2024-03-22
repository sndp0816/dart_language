// ! future (promise)

// * API -> https://jsonplaceholder.typicode.com/

//future<void> and void

import 'dart:convert';

import 'package:http/http.dart' as http;

//URI --> Uniform resource identifier
//URL --> Uniform resource locator

void main() async {
  // final result = await getUserName();
  // print(result);

  // print("Start...");

  // final URI = 'https://jsonplaceholder.typicode.com';
  // final URL = '$URI/users';

  final URL = Uri.https('jsonplaceholder.typicode.com', 'users');

  var res = await http.get(URL);

  // print(res.body);

  // print(jsonDecode(res.body)[5]['name']);

  http.get(URL).then((value) {
    print(jsonDecode(value.body)[5]['name']);
  }).catchError((e){
    print(e);
  });

  // final result2 = await getData();

  // print(result2);

  //then doesn't require to put async and await
  //it automatically return the value after the operation is completed
  //

  // getData().then((value) {
  //   print(value);
  // });

  // print("Hello");
  // print("sonu");
  // print("sandeep");
}
//future<void> and void

//in future<void> it can wait for the value
//in future it can return the value

//in void it just fire and forget it doesn't return anything

Future<String> getUserName() {
  return Future(() {
    return 'sndp0816';
  });
}

Future<String> getData() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Here is the data';
  });
}
