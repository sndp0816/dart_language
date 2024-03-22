//mixin = mixes in

void main() {
  final animal = Animal();
  animal.fn();
}

mixin Jump {
  int jumping = 10;
}

mixin Run {
  bool running = true;
}

class Animal with Jump, Run {
  void fn() {
    print(jumping);
    print(running);
  }
}
