
// Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Third class to create student and teacher objects
class School {
  void run() {
    // Creating student and teacher objects
    var student = Student('Mayor', 20, 10);
    var teacher = Teacher('Mr. Doe', 35, 'Literature');

    // Printing student and teacher information
    student.printInfo();
    print('\n');
    teacher.printInfo();
  }
}

void main() {
  // Creating a School object and calling the run method
  var school = School();
  school.run();
}