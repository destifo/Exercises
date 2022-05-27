class Person with TalkingCapability {
  Person(this._age, this._name) {}
  static const int limbs = 4;
  int _age;
  String _name;

  void walk() {
    print(_name + " walks");
  }
}

class Teacher extends Person {
  Teacher(int age, String name, this.courseName) : super(age, name) {}
  String courseName;
}

class Parrot with TalkingCapability {}

mixin TalkingCapability {
  void talk() {
    print("talk");
  }
}

abstract class Animal {
  void eat();

  void breath();
}

class Dog implements Animal {
  @override
  void breath() {
    // TODO: implement breath
    print("breath");
  }

  @override
  void eat() {
    // TODO: implement eat
    print("eat");
  }
}

class Calculator {
  double divide(int numenator, int denominator) {
    if (denominator == 0) throw Exception("division by zero error");
    return numenator / denominator;
  }
}

main() {
  Person p = Teacher(20, "destifo", "c++");
  p.walk();
  print(p._name);

  Calculator cal = Calculator();
  try {
    cal.divide(1, 0);
  } catch (ex) {
    print(ex);
  }
}
