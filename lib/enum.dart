void main() {
  // final employee1 = Employee("Sandeep", "Developer");
  // final employee2 = Employee("Amar", "Marketing");

  final emp1 = Employee("sandeep", EmployeeType.developer);
  final emp2 = Employee("amar", EmployeeType.marketing);
  emp1.fn3();
  emp2.fn3();
}

// enum EmployeeType { developer, marketing, finance }

enum EmployeeType {
  developer(15000),
  marketing(10000),
  finance(17000);

  final int salary;

  const EmployeeType(this.salary);
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  //for profession
  void fn() {
    switch (type) {
      case EmployeeType.developer:
        print("It's is developer");
        break;
      case EmployeeType.marketing:
        print("It from Marketing");
        break;
      default:
        print("Something went wrong");
    }
  }

  //for salary
  void fn2() {
    switch (type) {
      case EmployeeType.developer:
        print(EmployeeType.developer.salary);
        break;
      case EmployeeType.marketing:
        print(EmployeeType.marketing.salary);
        break;
      default:
        print("Something went wrong");
    }
  }

  void fn3() {
    print(type.salary);
  }
}
