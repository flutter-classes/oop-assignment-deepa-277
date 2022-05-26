import 'dart:io';

class Student {
  String studName;
  int rollNum;
  double eng;
  double sci;
  double math;

  Student(
      {required this.studName,
      required this.rollNum,
      required this.eng,
      required this.sci,
      required this.math});

  marks() {
    print("Enter the obtained marks of English...");
    this.eng = double.parse(stdin.readLineSync()!);
    print("English: $eng");

    print("Enter the obtained marks of Science...");
    this.sci = double.parse(stdin.readLineSync()!);
    print("Science: $sci");

    print("Enter the obtained marks of Mathematics...");
    this.math = double.parse(stdin.readLineSync()!);
    print("Mathematics: $math");

    return;
  }

  totalMarks() {
    var total = this.eng + this.sci + this.math;
    print("Total marks obtained=$total");
    return;
  }

  showStudInfo() {
    print("Enter Name of Student...");
    String? studName = stdin.readLineSync();
    print("Name:${studName}");

    print("Enter Roll Number...");
    int rollNum = int.parse(stdin.readLineSync()!);
    print("Roll NUmber: ${rollNum}");
    return;
  }
}

main() {
  var stud1 =
      Student(studName: "Deepa", rollNum: 02, eng: 78, sci: 89, math: 96);
  stud1.showStudInfo();
  stud1.marks();
  stud1.totalMarks();
}
