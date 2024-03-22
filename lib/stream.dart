//what is stream

//A stream is a sequence of asynchronous events.
//It is like an asynchronous Iterable—where,
//instead of getting the next event when you ask for it,
//the stream tells you that there is an event when it is ready.

import 'dart:async';

void main() async {
  // you have to use await and async when you are using stream otherwise it shows
  //Instance of 'Future<int>'
  // var result1 = await countDown().first;
  // print(result1);

  // countDown().listen(
  //   (value) {
  //     print(value);
  //   },
  //   onDone: () {
  //     print("Done 👍");
  //   },
  // );

  // countDown2().listen(
  //   (event) {
  //     print(event);
  //   },
  //   onDone: () {
  //     print("Done 👍");
  //   },
  // );

  countDown3();
}

Stream<int> countDown() async* {
  for (var i = 0; i <= 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> countDown2() {
  return Stream.periodic(Duration(seconds: 1), (i) {
    return i;
  });
}

//always make sure that you close the stream after using it in your program
void countDown3() {
  final controller = StreamController<int>();
  controller.sink.add(0);
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.close();
  controller.addError("Here is Manual Error");

  controller.stream.listen((event) {
    print(event);
  }, onError: (error) {
    print(error);
  });

  controller.close();
}
