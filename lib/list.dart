// what is list?

// * List is a data type in dart that is used to store multiple values in a single variable.

void main() {
  // List in dart
  // 1. List
  // 2. Set
  // 3. Map

  //how list look in dart
  List name = ["sndp", "Rahul", "Amar"];
  //if you haven't specified the data type then dart will automatically assign the any data type
  //i can add anything in this list

  List data = ["sandeep", 21, false];

  //when you assign the datatype then no there datatype will fit in the list
  //i can't add sting in int list
  List<int> num = [
    10,
    20,
    20,
    30,
  ];
  // print(data);
  // print(num);
  // print(name[1]);

  // final student = Student("sandeep");

  // print(student.name);

  // List teachers = [
  //   Student("sandeep"),
  //   Student("rahul"),
  //   Student("amar"),
  //   "sndp",
  //   1,
  //   true
  // ];

  // final teacher = teachers[3];

  // // print(teacher.name);

  // //handling list exception
  // if (teachers is Teacher) {
  //   print(teacher.name);
  // } else {
  //   print(teacher);
  // }

  List<Staff> staff = [
    Staff("sandeep"),
    Staff("rahul"),
    Staff("amar"),
  ];

  List<Student2> students2 = [
    Student2("sandeep", 10),
    Student2("rahul", 80),
    Student2("amar", 300),
    Student2("sandeep", 40),
  ];

  Student2 newStudent = Student2("John wick", 1000);

  Set<Student2> studentSet = {
    Student2("sandeep", 10),
    Student2("rahul", 80),
    Student2("amar", 300),
    newStudent,
    newStudent
  };

  // print(studentSet);

  // print(staff);
  // staff.add(Staff("new staff"));
  // print(staff);
  // staff.insert(0, (Staff("Mohan")));
  // print(staff);
  // staff.remove(Staff("rahul"));
  // print(staff);

  List<Student2> passedStudents = [];

  // for (int i = 0; i < students2.length; i++) {
  //   if (students2[i].marks >= 40) {
  //     passedStudents.add(students2[i]);
  //   }
  // }

  // for(Student2 student in students2) {
  //   if(student.marks <= 40) {
  //     passedStudents.add(student);
  //   }
  // }

  // print(passedStudents);

  //! Map

  Map marks = {"sandeep": 10, "rahul": 20, "amar": 30};

  //using datatype we can use functionality of map
  Map<String, int> marks2 = {"sandeep": 10, "rahul": 20, "amar": 30};

  //print(marks["amar"]);

  final anotherMap = {
    "sandeep": 22,
    "marks": 10,
  };

  // print(marks2["sandeep"]!.isEven);
  // marks2.addAll(anotherMap);
  // print(marks2);

  // for (var i = 0; i < marks2.length; i++) {
  //   print(marks2.keys.toList()[i]);
  // }

  // for (var i = 0; i < marks2.length; i++) {
  //   print('${marks2.keys.toList()[i]} : ${marks2.values.toList()[i]}');
  // }

  // marks2.forEach((key, value) {
  //   print('$key : $value');
  // });

  Map<String, int> Room1 = {
    "teachers": 2,
    "students": 10,
    "tables": 10,
  };

  List<Map<String, int>> Rooms2 = [
    {
      "teachers": 22,
      "students": 120,
      "tables": 110,
    },
    {
      "teachers": 12,
      "students": 30,
      "tables": 50,
    },
    Room1
  ];

  // Rooms2.map(
  //   (e) {
  //     print(e);
  //   },
  // ).toList();

  Rooms2.map((e) {
    e.forEach((key, value) {
      print('$key : $value');
    });
  }).toList();
}

class Student<T> {
  final T name;

  final T marks;

  Student(this.name, this.marks);

  void setName(T name) {
    print("Name is $name");
  }
}

class Student2 {
  final String name;
  final int marks;

  Student2(this.name, this.marks);
  @override
  String toString() {
    return 'Student: $name - Marks: $marks';
  }
}

class Teacher {
  final String name;

  Teacher(this.name);
}

class Staff {
  final String name;

  Staff(this.name);

  @override
  String toString() => 'name is $name';
}
